#include "utils.hpp"
#include "gadgets/poseidon.hpp"
#include "stubs.hpp"

using namespace std;

void prove(int x, int y, int time, int pk, int rand)
{
    ethsnarks::ppT::init_public_params();
    ethsnarks::ProtoboardT pb;

    libsnark::pb_variable<ethsnarks::FieldT> tx; 
    libsnark::pb_variable<ethsnarks::FieldT> ty;
    libsnark::pb_variable<ethsnarks::FieldT> ix; 
    libsnark::pb_variable<ethsnarks::FieldT> iy;
    // libsnark::pb_variable<ethsnarks::FieldT> itime;
    // libsnark::pb_variable<ethsnarks::FieldT> ipk;
    // libsnark::pb_variable<ethsnarks::FieldT> irand;

    tx.allocate(pb, "tx");
    ty.allocate(pb, "ty");
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

    // if( ! pb.is_satisfied() ) {
    //     cout << "Not satisfied" << endl;
    //     return;
    // }

    auto constraints = pb.get_constraint_system();
    auto keypair = libsnark::r1cs_gg_ppzksnark_zok_generator<ethsnarks::ppT>(constraints);
    
    pb.val(tx) = 116;
    pb.val(ty) = 40;

    pb.val(ix) = x;
    pb.val(iy) = y;
    the_gadget.generate_r1cs_witness();

    auto primary_input = pb.primary_input();
    auto auxiliary_input = pb.auxiliary_input();
    auto proof = libsnark::r1cs_gg_ppzksnark_zok_prover<ethsnarks::ppT>(keypair.pk,
                                                                        primary_input,
                                                                        auxiliary_input);

    bool verified = libsnark::r1cs_gg_ppzksnark_zok_verifier_strong_IC<ethsnarks::ppT>(keypair.vk, primary_input,proof);
    cout << "Verification status: " << verified << endl;
}

int main()
{
    prove(116, 40, 3, 4, 5);
}