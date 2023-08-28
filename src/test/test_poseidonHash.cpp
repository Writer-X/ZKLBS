#include "utils.hpp"
#include "gadgets/poseidon.hpp"
#include "stubs.hpp"
#include <string>

using ethsnarks::ppT;
using ethsnarks::FieldT;
using ethsnarks::ProtoboardT;
using ethsnarks::VariableT;
using ethsnarks::make_var_array;
using ethsnarks::Poseidon128;
using ethsnarks::stub_test_proof_verify;

using std::cout;
using std::endl;
using std::cerr;

int main()
{
    ProtoboardT pb;
    const auto actual =  Poseidon128<5,1>::permute({116, 40, 12, 123456789, 5});
    // actual[0].print();
    return 0;
}