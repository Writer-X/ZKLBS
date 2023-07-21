#include "circuit.h"

std::vector<std::string> circuit::make_proof(int level, int x, int y, int time, int pk, int rand){
    switch(level){
        // case 1:
        //     return make_proof_level1(x, y, time, pk, rand);
        case 2:
            return make_proof_level2(x, y, time, pk, rand);
        // case 3:
        //     return make_proof_level3(x, y, time, pk, rand);
        // case 4:
        //     return make_proof_level4(x, y, time, pk, rand);
        default:
            return std::vector<std::string>();
    }
}

std::vector<std::string> circuit::make_proof_level2(int x, int y, int time, int pk, int rand){
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;

    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;
    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
    ix.allocate(pb, "ix");
    iy.allocate(pb, "iy");

    pb.set_input_sizes(2);

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ix, 1, tx));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(iy, 1, ty));

    auto inputs = ethsnarks::make_var_array(pb, "input", {x, y, time, pk, rand});
    ethsnarks::Poseidon128<5,1> the_gadget(pb, inputs, "gadget");
    the_gadget.generate_r1cs_witness();
    the_gadget.generate_r1cs_constraints();

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);

    pb.val(tx) = tx_val;
    pb.val(ty) = ty_val;
    pb.val(ix) = x;
    pb.val(iy) = y;

    auto primary_input = pb.primary_input();
    auto auxiliary_input = pb.auxiliary_input();
    auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk, primary_input, auxiliary_input);
    
    std::string vk_json = ethsnarks::vk2json(keypair.vk);
    std::string proof_json = ethsnarks::proof_to_json(proof, primary_input);

    std::vector<std::string> result;
    result.push_back(vk_json);
    result.push_back(proof_json);
    return result;
}

bool verify_level2(std::string vk_json, std::string proof_json) {
    std::stringstream vk_stream;
    vk_stream << vk_json;
    auto vk = ethsnarks::vk_from_json(vk_stream);

    std::stringstream proof_stream;
    proof_stream << proof_json;
    auto proof_pair = ethsnarks::proof_from_json(proof_stream);

    return libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(vk, proof_pair.first, proof_pair.second);
}

int main(){
    circuit c;
    std::vector<std::string> result = c.make_proof(2, 116, 40, 3, 4, 5);
    std::cout << result[0] << std::endl;
    std::cout << result[1] << std::endl;
    std::cout << verify_level2(result[0], result[1]) << std::endl;
    return 0;
}