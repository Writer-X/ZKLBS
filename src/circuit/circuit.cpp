#include "circuit.h"

std::vector<std::string> circuit::make_proof(int level, int x, int y, int time, int pk, int rand){
    switch(level){
        case 1:
            return make_proof_level1(x, y, time, pk, rand);
        case 2:
            return make_proof_level2(x, y, time, pk, rand);
        case 3:
            return make_proof_level3(x, y, time, pk, rand);
        case 4:
            return make_proof_level4(x, y, time, pk, rand);
        default:
            return std::vector<std::string>();
    }
}

bool circuit::verify(int level, std::string vk_json, std::string proof_json){
    switch(level){
        case 1:
            return verify_level1(vk_json, proof_json);
        case 2:
            return verify_level2(vk_json, proof_json);
        case 3:
            return verify_level3(vk_json, proof_json);
        case 4:
            return verify_level4(vk_json, proof_json);
        default:
            return false;
    }
}

void circuit::make_hash(int x, int y, int time, int pk, int rand){
    ethsnarks::ppT::init_public_params();
    std::vector<ethsnarks::FieldT> actual = ethsnarks::Poseidon128<5,1>::permute({x, y, time, pk, rand});
    freopen("/tmp/data/hash.txt", "w", stdout);
    auto h = actual[0].as_bigint();
    h.print_hex();
    freopen("CON", "w", stdout);
}

std::vector<std::string> circuit::make_proof_level1(int x, int y, int time, int pk, int rand){
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;

    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;
    libsnark::pb_variable<ethsnarks::FieldT> r;
    libsnark::pb_variable<ethsnarks::FieldT> thash;

    libsnark::pb_variable<ethsnarks::FieldT> ftx;
    libsnark::pb_variable<ethsnarks::FieldT> subx;
    libsnark::pb_variable<ethsnarks::FieldT> muxx;
    libsnark::pb_variable<ethsnarks::FieldT> fty;
    libsnark::pb_variable<ethsnarks::FieldT> suby;
    libsnark::pb_variable<ethsnarks::FieldT> muxy;

    libsnark::pb_variable<ethsnarks::FieldT> out;
    libsnark::pb_variable<ethsnarks::FieldT> muxr;
    libsnark::pb_variable<ethsnarks::FieldT> less;
    libsnark::pb_variable<ethsnarks::FieldT> less_or_eq;

    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
    r.allocate(pb, "r");
    thash.allocate(pb, "thash");
    
    ftx.allocate(pb, "ftx");
    subx.allocate(pb, "subx");
    muxx.allocate(pb, "muxx");
    fty.allocate(pb, "fty");
    suby.allocate(pb, "suby");
    muxy.allocate(pb, "muxy");

    out.allocate(pb, "out");
    muxr.allocate(pb, "muxr");
    less.allocate(pb, "less");
    less_or_eq.allocate(pb, "less_or_eq");

    ix.allocate(pb, "ix");
    iy.allocate(pb, "iy");

    pb.set_input_sizes(4);

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(tx, -1, ftx));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ix + ftx, 1, subx));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(subx, subx, muxx));

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ty, -1, fty));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(iy + fty, 1, suby));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(suby, suby, muxy));

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(muxx + muxy, 1, out));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(r,r,muxr));

    libsnark::comparison_gadget<ethsnarks::FieldT> cmp(pb, 10, out, muxr, less, less_or_eq, "cmp");
    cmp.generate_r1cs_constraints();

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(less, 1, ethsnarks::FieldT::one()));


    auto inputs = ethsnarks::make_var_array(pb, "input", {x, y, time, pk, rand});
    ethsnarks::Poseidon128<5,1> the_gadget(pb, inputs, "gadget");
    
    the_gadget.generate_r1cs_constraints();  

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(the_gadget.result(), 1, thash));

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);

    pb.val(tx) = tx_val;
    pb.val(ty) = ty_val;

    pb.val(ftx) = 0 - tx_val;
    pb.val(subx) = x - tx_val;
    pb.val(muxx) = (x - tx_val) * (x - tx_val);

    pb.val(fty) = 0 - ty_val;
    pb.val(suby) = y - ty_val;
    pb.val(muxy) = (y - ty_val) * (y - ty_val);

    pb.val(out) = (x - tx_val) * (x - tx_val) + (y - ty_val) * (y - ty_val);

    pb.val(r) = r_val;
    pb.val(muxr) = r_val * r_val;

    if (((x - tx_val) * (x - tx_val) + (y - ty_val) * (y - ty_val)) > r_val * r_val)
    {
        throw "Can't meet demand";
    }

    std::vector<ethsnarks::FieldT> actual = ethsnarks::Poseidon128<5,1>::permute({x, y, time, pk, rand});
    pb.val(thash) = actual[0];
    the_gadget.generate_r1cs_witness();
    cmp.generate_r1cs_witness();

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

std::vector<std::string> circuit::make_proof_level2(int x, int y, int time, int pk, int rand){
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;

    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;
    libsnark::pb_variable<ethsnarks::FieldT> thash;

    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
    thash.allocate(pb, "thash");

    ix.allocate(pb, "ix");
    iy.allocate(pb, "iy");

    pb.set_input_sizes(3);

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ix, 1, tx));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(iy, 1, ty));

    auto inputs = ethsnarks::make_var_array(pb, "input", {x, y, time, pk, rand});
    ethsnarks::Poseidon128<5,1> the_gadget(pb, inputs, "gadget");
    
    the_gadget.generate_r1cs_constraints();  

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(the_gadget.result(), 1, thash));

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);

    pb.val(tx) = tx_val;
    pb.val(ty) = ty_val;
    std::vector<ethsnarks::FieldT> actual = ethsnarks::Poseidon128<5,1>::permute({x, y, time, pk, rand});
    pb.val(thash) = actual[0];
    the_gadget.generate_r1cs_witness();

    pb.val(ix) = x;
    pb.val(iy) = y;

    auto primary_input = pb.primary_input();
    auto auxiliary_input = pb.auxiliary_input();

    if (!pb.is_satisfied())
    {
        throw "The circuit can't make proof, please make sure the demands are met";
    }
    auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk, primary_input, auxiliary_input);
    
    std::string vk_json = ethsnarks::vk2json(keypair.vk);
    std::string proof_json = ethsnarks::proof_to_json(proof, primary_input);

    std::vector<std::string> result;
    result.push_back(vk_json);
    result.push_back(proof_json);
    return result;
}

std::vector<std::string> circuit::make_proof_level3(int x, int y, int time, int pk, int rand){
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;

    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;
    libsnark::pb_variable<ethsnarks::FieldT> ttime;
    libsnark::pb_variable<ethsnarks::FieldT> thash;

    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;
    libsnark::pb_variable<ethsnarks::FieldT> itime;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
    ttime.allocate(pb, "ttime");
    thash.allocate(pb, "thash");

    ix.allocate(pb, "ix");
    iy.allocate(pb, "iy");
    itime.allocate(pb, "itime");

    pb.set_input_sizes(4);

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ix, 1, tx));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(iy, 1, ty));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(itime, 1, ttime));

    auto inputs = ethsnarks::make_var_array(pb, "input", {x, y, time, pk, rand});
    ethsnarks::Poseidon128<5,1> the_gadget(pb, inputs, "gadget");
    
    the_gadget.generate_r1cs_constraints();  

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(the_gadget.result(), 1, thash));

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);

    pb.val(tx) = tx_val;
    pb.val(ty) = ty_val;
    pb.val(ttime) = ttime_val;
    std::vector<ethsnarks::FieldT> actual = ethsnarks::Poseidon128<5,1>::permute({x, y, time, pk, rand});
    pb.val(thash) = actual[0];
    the_gadget.generate_r1cs_witness();

    pb.val(ix) = x;
    pb.val(iy) = y;
    pb.val(itime) = time;

    auto primary_input = pb.primary_input();
    auto auxiliary_input = pb.auxiliary_input();
    if (!pb.is_satisfied())
    {
        throw "The circuit can't make proof, please make sure the demands are met";
    }
    auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk, primary_input, auxiliary_input);

    std::string vk_json = ethsnarks::vk2json(keypair.vk);
    std::string proof_json = ethsnarks::proof_to_json(proof, primary_input);

    std::vector<std::string> result;
    result.push_back(vk_json);
    result.push_back(proof_json);
    return result;
}

std::vector<std::string> circuit::make_proof_level4(int x, int y, int time, int pk, int rand){
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;

    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;
    libsnark::pb_variable<ethsnarks::FieldT> ttime;
    libsnark::pb_variable<ethsnarks::FieldT> tpk;
    libsnark::pb_variable<ethsnarks::FieldT> thash;

    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;
    libsnark::pb_variable<ethsnarks::FieldT> itime;
    libsnark::pb_variable<ethsnarks::FieldT> ipk;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
    ttime.allocate(pb, "ttime");
    tpk.allocate(pb, "tpk");
    thash.allocate(pb, "thash");

    ix.allocate(pb, "ix");
    iy.allocate(pb, "iy");
    itime.allocate(pb, "itime");
    ipk.allocate(pb, "ipk");

    pb.set_input_sizes(5);

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ix, 1, tx));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(iy, 1, ty));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(itime, 1, ttime));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ipk, 1, tpk));

    auto inputs = ethsnarks::make_var_array(pb, "input", {x, y, time, pk, rand});
    ethsnarks::Poseidon128<5,1> the_gadget(pb, inputs, "gadget");
    
    the_gadget.generate_r1cs_constraints();  

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(the_gadget.result(), 1, thash));

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);

    pb.val(tx) = tx_val;
    pb.val(ty) = ty_val;
    pb.val(ttime) = ttime_val;
    pb.val(tpk) = tpk_val;
    std::vector<ethsnarks::FieldT> actual = ethsnarks::Poseidon128<5,1>::permute({x, y, time, pk, rand});
    pb.val(thash) = actual[0];
    the_gadget.generate_r1cs_witness();
    
    pb.val(ix) = x;
    pb.val(iy) = y;
    pb.val(itime) = time;
    pb.val(ipk) = pk;

    auto primary_input = pb.primary_input();
    auto auxiliary_input = pb.auxiliary_input();
    if (!pb.is_satisfied())
    {
        throw "The circuit can't make proof, please make sure the demands are met";
    }
    auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk, primary_input, auxiliary_input);

    std::string vk_json = ethsnarks::vk2json(keypair.vk);
    std::string proof_json = ethsnarks::proof_to_json(proof, primary_input);

    std::vector<std::string> result;
    result.push_back(vk_json);
    result.push_back(proof_json);
    return result;
}

bool circuit::verify_level1(std::string vk_json, std::string proof_json) {
    ethsnarks::ppT::init_public_params();
    std::stringstream vk_stream;
    vk_stream << vk_json;
    auto vk = ethsnarks::vk_from_json(vk_stream);

    std::stringstream proof_stream;
    proof_stream << proof_json;
    auto proof_pair = ethsnarks::proof_from_json(proof_stream);
    return libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(vk, proof_pair.first, proof_pair.second);
}

bool circuit::verify_level2(std::string vk_json, std::string proof_json) {
    ethsnarks::ppT::init_public_params();
    std::stringstream vk_stream;
    vk_stream << vk_json;
    auto vk = ethsnarks::vk_from_json(vk_stream);

    std::stringstream proof_stream;
    proof_stream << proof_json;
    auto proof_pair = ethsnarks::proof_from_json(proof_stream);
    return libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(vk, proof_pair.first, proof_pair.second);
}

bool circuit::verify_level3(std::string vk_json, std::string proof_json) {
    ethsnarks::ppT::init_public_params();
    std::stringstream vk_stream;
    vk_stream << vk_json;
    auto vk = ethsnarks::vk_from_json(vk_stream);

    std::stringstream proof_stream;
    proof_stream << proof_json;
    auto proof_pair = ethsnarks::proof_from_json(proof_stream);
    return libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(vk, proof_pair.first, proof_pair.second);
}

bool circuit::verify_level4(std::string vk_json, std::string proof_json) {
    ethsnarks::ppT::init_public_params();
    std::stringstream vk_stream;
    vk_stream << vk_json;
    auto vk = ethsnarks::vk_from_json(vk_stream);

    std::stringstream proof_stream;
    proof_stream << proof_json;
    auto proof_pair = ethsnarks::proof_from_json(proof_stream);
    return libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(vk, proof_pair.first, proof_pair.second);
}

// int main(){
//     circuit c;
//     // // test level 1
//     // std::vector<std::string> result1 = c.make_proof(1, 117, 41, 3, 4, 5);
//     // std::cout << result1[0] << std::endl;
//     // std::cout << result1[1] << std::endl;
//     // std::cout << c.verify(1, result1[0], result1[1]) << std::endl;
//     // c.make_hash(117, 41, 3, 4, 5);

//     // test level 2
//     std::vector<std::string> result2 = c.make_proof(2, 116, 40, 12, 123456789, 5);
//     std::cout << result2[0] << std::endl;
//     std::cout << result2[1] << std::endl;
//     std::cout << c.verify(2, result2[0], result2[1]) << std::endl;
//     c.make_hash(116, 40, 3, 4, 5);

//     // // test level 3
//     // std::vector<std::string> result3 = c.make_proof(3, 116, 40, 12, 4, 5);
//     // std::cout << result3[0] << std::endl;
//     // std::cout << result3[1] << std::endl;
//     // std::cout << c.verify(3, result3[0], result3[1]) << std::endl;
//     // c.make_hash(116, 40, 12, 4, 5);

//     // // test level 4
//     // std::vector<std::string> result4 = c.make_proof(4, 116, 40, 12, 123456789, 5);
//     // std::cout << result4[0] << std::endl;
//     // std::cout << result4[1] << std::endl;
//     // std::cout << c.verify(4, result4[0], result4[1]) << std::endl;
//     // c.make_hash(116, 40, 12, 123456789, 5); 
//     return 0;
// }