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

std::string Client::client_to_verifier(const std::string vk, const std::string proof, const std::string lev)
{
    CVRequest request;
    request.set_vk(vk);
    request.set_proof(proof);
    request.set_lev(lev);

    CVReply reply;
    ClientContext context;

    Status status = cvStub_->CVCommunication(&context, request, &reply);

    if (status.ok())
    {
        std::cout << "C2V result: " << reply.answer() << std::endl;
        return reply.answer();
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

void Client::setsPk(std::string spk)
{
    sPk = spk;
}

void Client::setsX(std::string sx)
{
    sX = sx;
}

void Client::setsY(std::string sy)
{
    sY = sy;
}

void Client::setlevel(int lev)
{
    level = lev;
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
    
    std::string lev = std::to_string(level);
    
    std::string vReply = greeter2.client_to_verifier(vk, proof, lev);
    std::cout << "From verifier reply:" << vReply << std::endl;
}

std::vector<std::string> Client::run_client_to_server(string spk, string sx, string sy)
{
    sPk = spk;
    sX = sx;
    sY = sy;
    std::string server_address = "localhost:50051";
    Client greeter(
        grpc::CreateChannel(server_address, grpc::InsecureChannelCredentials()));

    std::string reply = greeter.client_to_server(sPk, sX, sY);
    std::cout << "From server reply:" << reply << std::endl;

    vector<std::string> result;
    result.push_back(greeter.getsRand());
    result.push_back(greeter.getsTime());

    return result;
}

bool Client::run_client_to_verifier(int lev, string spk, string sx, string sy, string srand, string stime)
{
    level = lev;
    sPk = spk;
    sX = sx;
    sY = sy;
    sRand = srand;
    sTime = stime;
    
    int iX = stoi(sX);
    int iY = stoi(sY);
    int iPk = stoi(sPk);
    int iRand = stoi(sRand);
    int iTime = stoi(sTime);

    circuit c;
    std::vector<std::string> result;

    try
    {
        result = c.make_proof(level, iX, iY, iTime, iPk, iRand);
    }
    catch(...)
    {
        return false;
    }
    
    std::string vk = result[0];
    std::string proof = result[1];

    std::string verifier_address = "localhost:50052";
    Client greeter2(
        grpc::CreateChannel(verifier_address, grpc::InsecureChannelCredentials()));
    
    std::string slev = std::to_string(level);
    
    std::string vReply = greeter2.client_to_verifier(vk, proof, slev);
    std::cout << "From verifier reply:" << vReply << std::endl;

    if(vReply == "Verify Success")
    {
        return true;
    }
    else 
    {
        return false;
    }
}
// int main()
// {
//     Client c;
//     c.RunClient();
//     return 0;
// }