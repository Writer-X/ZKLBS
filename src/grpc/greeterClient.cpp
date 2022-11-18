#include <iostream>
#include <memory>
#include <string>

#include <grpcpp/grpcpp.h>

#include "Client2Server.grpc.pb.h"
#include "Client2Verifier.grpc.pb.h"
#include "../circuit/PoseidonClient.cpp"
#include "../circuit/PoseidonServer.cpp"
#include "../utils/TimeUtil.cpp"
#include "../utils/CoordinateUtil.cpp"
#include "../utils/TypeUtil.cpp"
#include "../utils/RandomUtil.cpp"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;

using Client2Server::CSGreeter;
using Client2Server::CSReply;
using Client2Server::CSRequest;

using Client2Verifier::CVGreeter;
using Client2Verifier::CVReply;
using Client2Verifier::CVRequest;

std::string sRand = "";
std::string sTime = "";

class GreeterClient
{
public:
    // GreeterClient(std::shared_ptr<Channel> channel)
    //     : stub_(CSGreeter::NewStub(channel)) {}
    GreeterClient(std::shared_ptr<Channel> channel)
    {
        stub_ = CSGreeter::NewStub(channel);
        cvStub_ = CVGreeter::NewStub(channel);
    }
    std::string client_to_server(const std::string pk,
                                 const std::string latitude,
                                 const std::string longitude)
    {
        CSRequest request;
        request.set_pk(pk);
        request.set_latitude(latitude);
        request.set_longitude(longitude);

        CSReply reply;
        ClientContext context;

        Status status = stub_->CSCommunication(&context, request, &reply);

        if (status.ok())
        {
            std::cout << "From server rand: " << reply.rand() << std::endl;
            std::cout << "From server time: " << reply.time() << std::endl;
            sRand = reply.rand();
            sTime = reply.time();
            return "RPC SUCCESS";
        }
        else
        {
            std::cout << status.error_code() << ": " << status.error_message()
                      << std::endl;
            return "RPC failed";
        }
    }
    std::string client_to_verifier(const std::string vk, const std::string proof,
                                   const std::string randVk, const std::string randProof)
    {
        CVRequest request;
        request.set_vk(vk);
        request.set_proof(proof);
        request.set_randvk(randVk);
        request.set_randproof(randProof);

        CVReply reply;
        ClientContext context;

        Status status = cvStub_->CVCommunication(&context, request, &reply);

        if (status.ok())
        {
            std::cout << "From verifier answer: " << reply.answer() << std::endl;
            return "RPC SUCCESS";
        }
        else
        {
            std::cout << status.error_code() << ": " << status.error_message()
                      << std::endl;
            return "RPC failed";
        }
    }

private:
    std::unique_ptr<CSGreeter::Stub> stub_;
    std::unique_ptr<CVGreeter::Stub> cvStub_;
};

void RunClient()
{
    std::string server_address = "localhost:50051";
    GreeterClient greeter(
        grpc::CreateChannel(server_address, grpc::InsecureChannelCredentials()));

    CoordinateUtil coordinateUtil;
    std::pair<long int, long int> coordinate = coordinateUtil.getCoordinate();
    std::cout << "From client coordinate:" << coordinate.first << " " << coordinate.second << std::endl;
    TypeUtil typeUtil;
    RandomUtil randomUtil;

    std::string pk(randomUtil.generateRandomIntString(5));
    std::string lat(typeUtil.Int2String(coordinate.first));
    std::string lon(typeUtil.Int2String(coordinate.second));

    std::string reply = greeter.client_to_server(pk, lat, lon);
    std::cout << "From server reply:" << reply << std::endl;

    int iPk = typeUtil.String2Int(pk);
    int iRand = typeUtil.String2Int(sRand);
    int iTime = typeUtil.String2Int(sTime);
    std::cout << "From client iPk: " << iPk << std::endl;
    std::cout << "From client iLatitude: " << coordinate.first << std::endl;
    std::cout << "From client iLongitude: " << coordinate.second << std::endl;
    std::cout << "From client iRand: " << iRand << std::endl;
    std::cout << "From client iTime: " << iTime << std::endl;

    PoseidonClient poseidonClient;
    poseidonClient.prove(coordinate, iTime, iPk, iRand, 2);

    PoseidonClient poseidonClient2;
    poseidonClient2.randProve(iRand);

    std::string verifier_address = "localhost:50052";
    GreeterClient cvGreeter(
        grpc::CreateChannel(verifier_address, grpc::InsecureChannelCredentials()));
    std::string vk(poseidonClient.getVkJson());
    std::string proof(poseidonClient.getProofJson());
    std::string randvk(poseidonClient2.getVkJson());
    std::string randproof(poseidonClient2.getProofJson());
    std::string vReply = cvGreeter.client_to_verifier(vk, proof, randvk, randproof);
    std::cout << "From verifier reply:" << vReply << std::endl;
}

int main()
{
    RunClient();
    return 0;
}