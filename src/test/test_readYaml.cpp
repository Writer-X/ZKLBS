#include "yaml-cpp/yaml.h"
#include <iostream>
#include <string>

int main()
{
    YAML::Node demand = YAML::LoadFile("/root/ZKLBS/src/config/demand.yaml");
    std::cout << demand["x"].as<std::string>() << std::endl;
    std::cout << demand["y"].as<int>() << std::endl;
    return 0;
}