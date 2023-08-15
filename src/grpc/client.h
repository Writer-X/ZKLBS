#include <iostream>
#include <memory>
#include <string>
#include <vector>
#include <grpcpp/grpcpp.h>

#include "Client2Server.grpc.pb.h"
#include "Client2Verifier.grpc.pb.h"

#include "circuit.h"

using grpc::Channel;
using grpc::ClientContext;
using grpc::Status;

using Client2Server::CSGreeter;
using Client2Server::CSRequest;
using Client2Server::CSReply;

using Client2Verifier::CVGreeter;
using Client2Verifier::CVRequest;
using Client2Verifier::CVReply;

using namespace std;

class Client
{
public:
    Client(){}
    Client(std::shared_ptr<Channel> channel);
    std::string client_to_server(const std::string pk,
                                 const std::string latitude,
                                 const std::string longitude);
    std::string client_to_verifier(const std::string vk, 
                                   const std::string proof,
                                   const std::string lev);
    std::string getsRand();
    std::string getsTime();

    void setsPk(std::string spk);
    void setsX(std::string sx);
    void setsY(std::string sy);
    void setlevel(int lev);
    
    void RunClient();

    std::vector<std::string> run_client_to_server(string spk, string sx, string sy);
    bool run_client_to_verifier(int lev, string spk, string sx, string sy, string srand, string stime);
private:
    std::unique_ptr<CSGreeter::Stub> stub_;
    std::unique_ptr<CVGreeter::Stub> cvStub_;

    std::string sRand = "";
    std::string sTime = "";

    std::string sPk = "123456789";
    std::string sX = "116";
    std::string sY = "40"; 
    int level = 2;
};