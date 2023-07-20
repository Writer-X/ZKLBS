#include <libsnark/common/default_types/r1cs_gg_ppzksnark_pp.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_gg_ppzksnark/r1cs_gg_ppzksnark.hpp>
#include <libsnark/gadgetlib1/pb_variable.hpp>
#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>

using namespace libsnark;
using namespace std;


void rangeproof(std::pair<long int, long int> coordinate)
{
   typedef libff::Fr<default_r1cs_gg_ppzksnark_pp> FieldT;

    // Initialize the curve parameters
    default_r1cs_gg_ppzksnark_pp::init_public_params();
    protoboard<FieldT> pb;

    pb_variable<FieldT> x; 
    pb_variable<FieldT> a;
    pb_variable<FieldT> fa;
    pb_variable<FieldT> sub_1;
    pb_variable<FieldT> mux_1;

    pb_variable<FieldT> y;
    pb_variable<FieldT> b;
    pb_variable<FieldT> fb;
    pb_variable<FieldT> sub_2;
    pb_variable<FieldT> mux_2;

    pb_variable<FieldT> out;
    pb_variable<FieldT> r;
    pb_variable<FieldT> mux_r;
    pb_variable<FieldT> less;
    pb_variable<FieldT> less_or_eq;

    a.allocate(pb, "a");
    b.allocate(pb, "b");
    
    r.allocate(pb, "r");

    x.allocate(pb, "x");
    fa.allocate(pb, "fa");
    sub_1.allocate(pb, "sub1");
    mux_1.allocate(pb, "mux_1");
    y.allocate(pb, "y");
    fb.allocate(pb, "fb");
    sub_2.allocate(pb, "sub_2");
    mux_2.allocate(pb, "mux_2");

    out.allocate(pb, "out");

    mux_r.allocate(pb, "mux_r");

    less.allocate(pb, "less");
    less_or_eq.allocate(pb, "less_or_eq");

    pb.set_input_sizes(2);
    
    pb.add_r1cs_constraint(r1cs_constraint<FieldT>(a, -1, fa));
    pb.add_r1cs_constraint(r1cs_constraint<FieldT>(x + fa, 1, sub_1));
    pb.add_r1cs_constraint(r1cs_constraint<FieldT>(sub_1, sub_1, mux_1));

    pb.add_r1cs_constraint(r1cs_constraint<FieldT>(b, -1, fb));
    pb.add_r1cs_constraint(r1cs_constraint<FieldT>(y + fb, 1, sub_2));
    pb.add_r1cs_constraint(r1cs_constraint<FieldT>(sub_2, sub_2, mux_2));
    
    pb.add_r1cs_constraint(r1cs_constraint<FieldT>(mux_1 + mux_2, 1, out));
    pb.add_r1cs_constraint(r1cs_constraint<FieldT>(r,r,mux_r));

    comparison_gadget<FieldT> cmp(pb, 10, out, mux_r, less, less_or_eq, "cmp");
    cmp.generate_r1cs_constraints();

    pb.add_r1cs_constraint(r1cs_constraint<FieldT>(less, 1, FieldT::one()));

    const r1cs_constraint_system<FieldT> constraint_system = pb.get_constraint_system();
    // generate keypair
    const r1cs_gg_ppzksnark_keypair<default_r1cs_gg_ppzksnark_pp> keypair = r1cs_gg_ppzksnark_generator<default_r1cs_gg_ppzksnark_pp>(constraint_system);

    pb.val(a) = 116;
    pb.val(b) = 40;


    pb.val(x) = coordinate.first;
    
    pb.val(fa) = -116;
    pb.val(sub_1) = coordinate.first - 116;
    pb.val(mux_1) = (coordinate.first - 116) * (coordinate.first - 116);

    pb.val(y) = coordinate.second;
    
    pb.val(fb) = -40;
    pb.val(sub_2) = coordinate.second - 40;
    pb.val(mux_2) = (coordinate.second - 40) * (coordinate.second - 40);

    pb.val(r) = 10;
    pb.val(mux_r) = 10 * 10;  

    pb.val(out) = (coordinate.first - 116) * (coordinate.first - 116) + (coordinate.second - 40) * (coordinate.second - 40);
    cmp.generate_r1cs_witness();

    // generate proof 
    const r1cs_gg_ppzksnark_proof<default_r1cs_gg_ppzksnark_pp> proof = r1cs_gg_ppzksnark_prover<default_r1cs_gg_ppzksnark_pp>(keypair.pk, pb.primary_input(), pb.auxiliary_input());

    // verify
    bool verified = r1cs_gg_ppzksnark_verifier_strong_IC<default_r1cs_gg_ppzksnark_pp>(keypair.vk, pb.primary_input(), proof);
    
    // cout << "Number of R1CS constraints: " << constraint_system.num_constraints() << endl;
    // cout << "Primary (public) input: " << pb.primary_input() << endl;
    // cout << "Auxiliary (private) input: " << pb.auxiliary_input() << endl;
    cout << "Verification status: " << verified << endl;
}

int main()
{
    std::pair<long int, long int> coordinate = std::make_pair(117, 41);
    rangeproof(coordinate);
}