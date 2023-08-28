#include <iostream>
#include <memory>
#include <string>
#include <fstream>
#include <ctime>

#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>

#include "Client2Server.grpc.pb.h"
#include "Server2Verifier.grpc.pb.h"

#include "circuit.h"

using grpc::Channel;
using grpc::ClientContext;

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;

using Client2Server::CSGreeter;
using Client2Server::CSReply;
using Client2Server::CSRequest;

using Server2Verifier::SVGreeter;
using Server2Verifier::SVReply;
using Server2Verifier::SVRequest;

class ZKServer
{
public:
    ZKServer() {}
    ZKServer(std::shared_ptr<Channel> channel);
    std::string server_to_verifier(const std::string h);
    void RunServer2Client();

private:
    std::unique_ptr<SVGreeter::Stub> svStub_;
};

class GreeterServiceImpl final : public CSGreeter::Service
{
    void RunServer2Verifier(std::string hash)
    {
        std::string verifier_address = "localhost:50053";
        ZKServer greeter(
            grpc::CreateChannel(verifier_address, grpc::InsecureChannelCredentials()));

        std::string h(hash);
        std::cout << "s2v h: " << h << std::endl;
        std::string reply = greeter.server_to_verifier(h);
        std::cout << "s2v reply: " << reply << std::endl;
    }
    Status CSCommunication(ServerContext *context, const CSRequest *request,
                           CSReply *reply) override
    {
        int iPk = stoi(request->pk());
        int iX = stoi(request->latitude());
        int iY = stoi(request->longitude());
        srand(time(nullptr));
        int iRand = rand();
        int iTime = 12;

        std::string sRand = std::to_string(iRand);
        std::string sTime = std::to_string(iTime);
        reply->set_rand(sRand);
        reply->set_time(sTime);

        circuit c;
        c.make_hash(iX, iY, iTime, iPk, iRand);

        // 读取/tmp/data/hash.txt的最后一行
        std::string path = "/tmp/data/hash.txt";
        std::ifstream f;
        f.open(path, std::ios::in);
        std::string hash;
        getline(f,hash);
        f.close();

        RunServer2Verifier(hash);
        return Status::OK;
    }
};