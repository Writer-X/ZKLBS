#include "../circuit/PoseidonClient.cpp"
#include "../circuit/PoseidonServer.cpp"

void test_prove(PoseidonClient &poseidonClient)
{
    std::pair<long int, long int> coordinate = std::make_pair(116, 39);
    int time = 1;
    int pk = 2;
    int rand = 3;
    poseidonClient.prove(coordinate, time, pk, rand, 2);
}

void test_verify(PoseidonServer &poseidonServer, std::string vk, std::string proof)
{
    auto if_verify = poseidonServer.verify(2, vk, proof);
    std::cout << if_verify << std::endl;
}

int main()
{
    PoseidonServer poseidonServer;
    PoseidonClient poseidonClient;
    test_prove(poseidonClient);
    std::cout << poseidonClient.getVkJson() << std::endl;
    std::cout << poseidonClient.getProofJson() << std::endl;
    test_verify(poseidonServer, poseidonClient.getVkJson(), poseidonClient.getProofJson());
    return 0;
}