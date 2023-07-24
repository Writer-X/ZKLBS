#include "client.h"

Client::Client(std::shared_ptr<Channel> channel)
    : stub_(CSGreeter::NewStub(channel)), cvStub_(CVGreeter::NewStub(channel)) {}

std::string Client::client_to_server(const std::string pk,
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
        std::cout << "S2C rand: " << reply.rand() << std::endl;
        std::cout << "S2C time: " << reply.time() << std::endl;
        sRand = reply.rand();
        sTime = reply.time();
        return "RPC SUCCESS";
    }
    else
    {
        std::cout << status.error_code() << ": " << status.error_message()
                  << std::endl;
        return "RPC FAILED";
    }
}

std::string Client::client_to_verifier(const std::string vk, const std::string proof)
{
    CVRequest request;
    request.set_vk(vk);
    request.set_proof(proof);

    CVReply reply;
    ClientContext context;

    Status status = cvStub_->CVCommunication(&context, request, &reply);

    if (status.ok())
    {
        std::cout << "C2V result: " << reply.answer() << std::endl;
        return "RPC SUCCESS";
    }
    else
    {
        std::cout << status.error_code() << ": " << status.error_message()
                  << std::endl;
        return "RPC FAILED";
    }
}
std::string Client::getsRand()
{
    return sRand;
}

std::string Client::getsTime()
{
    return sTime;
}

void Client::RunClient()
{
    std::string server_address = "localhost:50051";
    Client greeter(
        grpc::CreateChannel(server_address, grpc::InsecureChannelCredentials()));

    std::string reply = greeter.client_to_server(sPk, sX, sY);
    std::cout << "From server reply:" << reply << std::endl;

    int iX = stoi(sX);
    int iY = stoi(sY);
    int iPk = stoi(sPk);
    int iRand = stoi(greeter.getsRand());
    int iTime = stoi(greeter.getsTime());

    circuit c;
    std::vector<std::string> result = c.make_proof(level, iX, iY, iTime, iPk, iRand);
    std::string vk = result[0];
    std::string proof = result[1];

    std::string verifier_address = "localhost:50052";
    Client greeter2(
        grpc::CreateChannel(verifier_address, grpc::InsecureChannelCredentials()));
    
    std::string vReply = greeter2.client_to_verifier(vk, proof);
    std::cout << "From verifier reply:" << vReply << std::endl;
}

int main()
{
    Client c;
    c.RunClient();
    return 0;
}