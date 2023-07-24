#include "utils.hpp"
#include "gadgets/poseidon.hpp"
#include "stubs.hpp"

#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>

using namespace std;

void prove(int x, int y, int time, int pk, int rand)
{
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;

    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;
    libsnark::pb_variable<ethsnarks::FieldT> thash;
    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;
    // libsnark::pb_variable<ethsnarks::FieldT> itime;
    // libsnark::pb_variable<ethsnarks::FieldT> ipk;
    // libsnark::pb_variable<ethsnarks::FieldT> irand;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
    thash.allocate(pb, "thash");

    ix.allocate(pb, "ix");
    iy.allocate(pb, "iy");
    // itime.allocate(pb, "itime");
    // ipk.allocate(pb, "ipk");
    // irand.allocate(pb, "irand");
    pb.set_input_sizes(2);

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ix, 1, tx));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(iy, 1, ty));


    auto inputs = ethsnarks::make_var_array(pb, "input", {x, y, time, pk, rand});
    ethsnarks::Poseidon128<5,1> the_gadget(pb, inputs, "gadget");
    the_gadget.generate_r1cs_constraints();

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(the_gadget.result(), 1, thash));
    // if( ! pb.is_satisfied() ) {
    //     cout << "Not satisfied" << endl;
    //     return;
    // }

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);
    
    pb.val(tx) = 116;
    pb.val(ty) = 40;
    auto actual = ethsnarks::Poseidon128<5,1>::permute({116, 40, 3, 4, 5});
    pb.val(thash) = actual[0];

    pb.val(ix) = x;
    pb.val(iy) = y;
    the_gadget.generate_r1cs_witness();

    auto primary_input = pb.primary_input();
    auto auxiliary_input = pb.auxiliary_input();
    auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk,
                                                                        primary_input,
                                                                        auxiliary_input);

    bool verified = libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(keypair.vk, primary_input, proof);
    cout << "Verification status: " << verified << endl;
}

void prove2(int x, int y, int time, int pk, int rand)
{
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;

    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;
    libsnark::pb_variable<ethsnarks::FieldT> ttime;
    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;
    libsnark::pb_variable<ethsnarks::FieldT> itime;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
    ttime.allocate(pb, "ttime");

    ix.allocate(pb, "ix");
    iy.allocate(pb, "iy");
    itime.allocate(pb, "itime");
    pb.set_input_sizes(3);

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ix, 1, tx));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(iy, 1, ty));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(itime, 1, ttime));

    auto inputs = ethsnarks::make_var_array(pb, "input", {x, y, time, pk, rand});
    ethsnarks::Poseidon128<5,1> the_gadget(pb, inputs, "gadget");
    the_gadget.generate_r1cs_constraints();

    // if( ! pb.is_satisfied() ) {
    //     cout << "Not satisfied" << endl;
    //     return;
    // }

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);
    
    pb.val(tx) = 116;
    pb.val(ty) = 40;
    pb.val(ttime) = 3;

    pb.val(ix) = x;
    pb.val(iy) = y;
    pb.val(itime) = time;
    the_gadget.generate_r1cs_witness();

    auto primary_input = pb.primary_input();
    auto auxiliary_input = pb.auxiliary_input();
    auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk,
                                                                        primary_input,
                                                                        auxiliary_input);

    bool verified = libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(keypair.vk, primary_input, proof);
    cout << "Verification status: " << verified << endl;
}

void prove3(int x, int y, int time, int pk, int rand)
{
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;

    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;
    libsnark::pb_variable<ethsnarks::FieldT> ttime;
    libsnark::pb_variable<ethsnarks::FieldT> tpk;
    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;
    libsnark::pb_variable<ethsnarks::FieldT> itime;
    libsnark::pb_variable<ethsnarks::FieldT> ipk;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
    ttime.allocate(pb, "ttime");
    tpk.allocate(pb, "tpk");

    ix.allocate(pb, "ix");
    iy.allocate(pb, "iy");
    itime.allocate(pb, "itime");
    ipk.allocate(pb, "ipk");
    pb.set_input_sizes(3);

    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ix, 1, tx));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(iy, 1, ty));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(itime, 1, ttime));
    pb.add_r1cs_constraint(libsnark::r1cs_constraint<ethsnarks::FieldT>(ipk, 1, tpk));

    auto inputs = ethsnarks::make_var_array(pb, "input", {x, y, time, pk, rand});
    ethsnarks::Poseidon128<5,1> the_gadget(pb, inputs, "gadget");
    the_gadget.generate_r1cs_constraints();

    // if( ! pb.is_satisfied() ) {
    //     cout << "Not satisfied" << endl;
    //     return;
    // }

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);
    
    pb.val(tx) = 116;
    pb.val(ty) = 40;
    pb.val(ttime) = 3;
    pb.val(tpk) = 4;

    pb.val(ix) = x;
    pb.val(iy) = y;
    pb.val(itime) = time;
    pb.val(ipk) = pk;
    the_gadget.generate_r1cs_witness();

    auto primary_input = pb.primary_input();
    auto auxiliary_input = pb.auxiliary_input();
    auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk,
                                                                        primary_input,
                                                                        auxiliary_input);

    bool verified = libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(keypair.vk, primary_input, proof);
    cout << "Verification status: " << verified << endl;
}

void prove4(int x, int y, int time, int pk, int rand)
{
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;    
    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;

    libsnark::pb_variable<ethsnarks::FieldT> ftx;
    libsnark::pb_variable<ethsnarks::FieldT> subx;
    libsnark::pb_variable<ethsnarks::FieldT> muxx;
    libsnark::pb_variable<ethsnarks::FieldT> fty;
    libsnark::pb_variable<ethsnarks::FieldT> suby;
    libsnark::pb_variable<ethsnarks::FieldT> muxy;

    libsnark::pb_variable<ethsnarks::FieldT> out;
    libsnark::pb_variable<ethsnarks::FieldT> r;
    libsnark::pb_variable<ethsnarks::FieldT> muxr;
    libsnark::pb_variable<ethsnarks::FieldT> less;
    libsnark::pb_variable<ethsnarks::FieldT> less_or_eq;

    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
    r.allocate(pb, "r");

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

    pb.set_input_sizes(3);

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

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);

    pb.val(tx) = 116;
    pb.val(ty) = 40;

    pb.val(ftx) = -116;
    pb.val(subx) = x - 116;
    pb.val(muxx) = (x - 116) * (x - 116);

    pb.val(fty) = -40;
    pb.val(suby) = y - 40;
    pb.val(muxy) = (y - 40) * (y - 40);

    pb.val(out) = (x - 116) * (x - 116) + (y - 40) * (y - 40);

    pb.val(r) = 10;
    pb.val(muxr) = 10 * 10;

    pb.val(ix) = x;
    pb.val(iy) = y;

    the_gadget.generate_r1cs_witness();
    cmp.generate_r1cs_witness();

    auto primary_input = pb.primary_input();
    auto auxiliary_input = pb.auxiliary_input();
    auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk,
                                                                        primary_input,
                                                                        auxiliary_input);

    bool verified = libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(keypair.vk, primary_input, proof);
    cout << "Verification status: " << verified << endl;
}

int main()
{
    prove(116, 40, 3, 4, 5);
//     prove2(116, 40, 3, 4, 5);
//     prove3(116, 40, 3, 4, 5);
    // prove4(117, 41, 3, 4, 5);
}