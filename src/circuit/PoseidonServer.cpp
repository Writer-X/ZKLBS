#include "ethsnarks.hpp"
#include "utils.hpp"
#include "stubs.hpp"
#include "gadgets/poseidon.hpp"
#include "import.hpp"
#include "export.hpp"

#include <utility>
#include <sstream>

using ethsnarks::make_var_array;
using ethsnarks::Poseidon128;
using ethsnarks::ppT;
using ethsnarks::proof_from_json;
using ethsnarks::ProtoboardT;
using ethsnarks::vk_from_json;

class PoseidonServer
{
public:
    bool verify(std::string vk_json, std::string proof_json, std::string server_proof_json)
    {
        ppT::init_public_params();
        std::stringstream vk_stream;
        vk_stream << vk_json;
        auto vk = vk_from_json(vk_stream);

        std::stringstream proof_stream;
        proof_stream << proof_json;
        auto proof_pair = proof_from_json(proof_stream);

        std::stringstream server_proof_stream;
        server_proof_stream << server_proof_json;
        auto server_proof_pair = proof_from_json(server_proof_stream);

        return libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ppT>(vk, server_proof_pair.first,
                                                                       proof_pair.second);
    }

private:
    // std::pair<long int, long int> coordinate = std::make_pair(116, 39);
    // int time = 1;
    // int pk = 2;
};