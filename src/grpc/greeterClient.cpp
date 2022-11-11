#include <iostream>
#include <memory>
#include <string>

#include <grpcpp/grpcpp.h>

#include "helloworld.grpc.pb.h"
#include "../circuit/PoseidonClient.cpp"
#include "../utils/TimeUtil.cpp"
#include "../utils/CoordinateUtil.cpp"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;
using helloworld::Greeter;
using helloworld::HelloReply;
using helloworld::HelloRequest;

class GreeterClient
{
public:
    GreeterClient(std::shared_ptr<Channel> channel)
        : stub_(Greeter::NewStub(channel)) {}

    std::string SayHello(const std::string &user,
                         const std::string vk_json,
                         const std::string proof_json)
    {
        HelloRequest request;
        request.set_name(user);
        request.set_vk(vk_json);
        request.set_proof(proof_json);

        HelloReply reply;
        ClientContext context;
        // context.AddMetadata("custom-header", "Custom Value");
        // context.AddMetadata("custom-header2", "Custom Value2");
        // std::cout << vk_json << std::endl;

        // context.AddMetadata("custom-header", vk_json);
        // context.AddMetadata("custom-header", proof_json);
        // context.AddMetadata(vk_json, proof_json);

        Status status = stub_->SayHello(&context, request, &reply);

        if (status.ok())
        {
            return reply.message();
        }
        else
        {
            std::cout << status.error_code() << ": " << status.error_message()
                      << std::endl;
            return "RPC failed";
        }
    }

private:
    std::unique_ptr<Greeter::Stub> stub_;
};

void RunClient()
{
    std::string target_str = "localhost:50051";
    GreeterClient greeter(
        grpc::CreateChannel(target_str, grpc::InsecureChannelCredentials()));
    std::string user("client");

    CoordinateUtil coordinateUtil;
    std::pair<long int, long int> coordinate = coordinateUtil.getCoordinate();
    std::cout << coordinate.first << " " << coordinate.second << std::endl;

    TimeUtil timeUtil;
    timeUtil.init();
    int time = timeUtil.getHour();
    std::cout << time << std::endl;

    int pk = 2;
    int rand = 3;
    PoseidonClient poseidonClient;
    poseidonClient.prove(coordinate, time, pk, rand, 2);

    std::string reply = greeter.SayHello(user, poseidonClient.getVkJson(),
                                         poseidonClient.getProofJson());
    std::cout << "Greeter received: " << reply << std::endl;
}

// int main()
// {
//     RunClient();
//     return 0;
// }