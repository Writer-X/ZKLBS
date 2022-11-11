#include "ethsnarks.hpp"
#include "utils.hpp"
#include "gadgets/poseidon.hpp"
#include "stubs.hpp"
#include "import.hpp"

#include <iostream>
#include <utility>

using ethsnarks::make_var_array;
using ethsnarks::Poseidon128;
using ethsnarks::ppT;
using ethsnarks::ProtoboardT;
using ethsnarks::vk2json;

class PoseidonClient
{
public:
    std::string getVkJson()
    {
        return vk_json;
    }
    std::string getProofJson()
    {
        return proof_json;
    }

    void prove(std::pair<long int, long int> coordinate,
               int time, int pk, int rand, int n)
    {
        ppT::init_public_params();
        ProtoboardT pb;
        auto var_inputs = make_var_array(pb, "input",
                                         {coordinate.first,
                                          coordinate.second,
                                          time, pk, rand});
        Poseidon128<2, 1> the_gadget(pb, var_inputs, "gadget");
        the_gadget.generate_r1cs_witness();
        pb.set_input_sizes(n);
        the_gadget.generate_r1cs_constraints();

        auto constraints = pb.get_constraint_system();
        auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ppT>(constraints);

        vk_json = vk2json(keypair.vk);

        // auto proving_key = keypair.pk;
        auto primary_input = pb.primary_input();
        auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk,
                                                                            primary_input,
                                                                            pb.auxiliary_input());
        proof_json = ethsnarks::proof_to_json(proof, primary_input);
    }

private:
    int pk;
    int rand;
    int time;
    std::pair<long int, long int> coordinate;

    std::string vk_json;
    std::string proof_json;
};