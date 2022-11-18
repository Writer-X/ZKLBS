#include <stdio.h>
#include <string>

class TypeUtil
{
public:
    int String2Int(std::string str)
    {
        return stoi(str);
    }
    std::string Int2String(int i)
    {
        return std::to_string(i);
    }
};