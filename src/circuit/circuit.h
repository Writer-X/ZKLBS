#include "ethsnarks.hpp"
#include "utils.hpp"
#include "gadgets/poseidon.hpp"
#include "stubs.hpp"
#include "import.hpp"
#include "export.hpp"
#include <libsnark/common/default_types/r1cs_gg_ppzksnark_pp.hpp>
#include <libsnark/zk_proof_systems/ppzksnark/r1cs_gg_ppzksnark/r1cs_gg_ppzksnark.hpp>
#include <libsnark/gadgetlib1/pb_variable.hpp>
#include <libsnark/gadgetlib1/gadgets/basic_gadgets.hpp>

class circuit{
public:
    std::vector<std::string> make_proof(int level, int x, int y, int time, int pk, int rand);
    void make_hash(int x, int y, int time, int pk, int rand);
    bool verify(int level, std::string vk_json, std::string proof_json);
private:
    std::vector<std::string> make_proof_level1(int x, int y, int time, int pk, int rand);
    std::vector<std::string> make_proof_level2(int x, int y, int time, int pk, int rand);
    std::vector<std::string> make_proof_level3(int x, int y, int time, int pk, int rand);
    std::vector<std::string> make_proof_level4(int x, int y, int time, int pk, int rand);
    
    bool verify_level1(std::string vk_json, std::string proof_json);
    bool verify_level2(std::string vk_json, std::string proof_json);
    bool verify_level3(std::string vk_json, std::string proof_json);
    bool verify_level4(std::string vk_json, std::string proof_json);

    int tx_val = 116;
    int ty_val = 40;
    int ttime_val = 12;
    int tpk_val = 123456789;
    int r_val = 10;
};