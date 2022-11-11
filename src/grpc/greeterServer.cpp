#include <iostream>
#include <memory>
#include <string>

#include <grpcpp/ext/proto_server_reflection_plugin.h>
#include <grpcpp/grpcpp.h>
#include <grpcpp/health_check_service_interface.h>

#include <helloworld.grpc.pb.h>
#include "../circuit/PoseidonServer.cpp"

using grpc::Server;
using grpc::ServerBuilder;
using grpc::ServerContext;
using grpc::Status;
using helloworld::Greeter;
using helloworld::HelloReply;
using helloworld::HelloRequest;

class GreeterServiceImpl final : public Greeter::Service
{
    Status SayHello(ServerContext *context, const HelloRequest *request,
                    HelloReply *reply) override
    {
        std::cout << request->name() << std::endl;
        std::cout << request->vk() << std::endl;
        std::cout << request->proof() << std::endl;
        auto vk = request->vk();
        auto proof = request->proof();
        PoseidonServer poseidonServer;
        auto if_verify = poseidonServer.verify(2, vk, proof);
        std::cout << if_verify << std::endl;
        if (if_verify)
        {
            std::string prefix("Server allow ");
            reply->set_message(prefix + request->name());
        }
        else
        {
            std::string prefix("Server reject ");
            reply->set_message(prefix + request->name());
        }
        return Status::OK;
    }
};

void RunServer()
{
    std::string server_address("0.0.0.0:50051");
    GreeterServiceImpl service;
    grpc::EnableDefaultHealthCheckService(true);
    grpc::reflection::InitProtoReflectionServerBuilderPlugin();
    ServerBuilder builder;

    builder.AddListeningPort(server_address, grpc::InsecureServerCredentials());
    builder.RegisterService(&service);
    std::unique_ptr<Server> server(builder.BuildAndStart());
    std::cout << "Server listening on " << server_address << std::endl;
    server->Wait();
}

int main(int argc, char **argv)
{
    RunServer();
    return 0;
}