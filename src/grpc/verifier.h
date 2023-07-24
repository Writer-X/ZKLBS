#include <iostream>
#include <memory>
#include <string>
#include <thread>

#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>

#include <Client2Verifier.grpc.pb.h>
#include <Server2Verifier.grpc.pb.h>

#include "circuit.h"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;

using Client2Verifier::CVGreeter;
using Client2Verifier::CVReply;
using Client2Verifier::CVRequest;

using Server2Verifier::SVGreeter;
using Server2Verifier::SVReply;
using Server2Verifier::SVRequest;

std::string h;

class GreeterServiceImpl final : public CVGreeter::Service
{
    Status CVCommunication(ServerContext *context, const CVRequest *request,
                           CVReply *reply) override
    {
        std::cout << "From client proof: " << request->proof() << std::endl;
        std::cout << "From client vk: " << request->vk() << std::endl;

        circuit c;
        auto if_verify = c.verify(2, request->vk(), request->proof());
        std::cout << "From verifier if_verify: " << if_verify << std::endl;
        if (if_verify)
            reply->set_answer("Verify Success");
        else
            reply->set_answer("Verify Fail");
        return Status::OK;
    }
};

class GreeterVerifierImpl final : public SVGreeter::Service
{
    Status SVCommunication(ServerContext *context, const SVRequest *request,
                           SVReply *reply) override
    {
        std::cout << "From server h: " << request->h() << std::endl;
        h = request->h();
        return Status::OK;
    }
};

class Verifier
{
public:
    static void RunVerifier2Client();
    static void RunVerifier2Server();
};