#include <string>
#include <iostream>

class RandomUtil
{
public:
    std::string generateRandomString(int length)
    {
        int flag = 0;
        std::string result = "";
        int i = 0;
        while (i < length)
        {
            flag = rand() % 3;
            switch (flag)
            {
            case 0:
                result += 'A' + rand() % 26;
                break;
            case 1:
                result += 'a' + rand() % 26;
            default:
                result += '0' + rand() % 10;
                break;
            }
            i++;
        }
        //result += '\0';
        return result;
    }
    std::string generateRandomIntString(int length)
    {
        int flag = 0;
        std::string result = "";
        int i = 0;
        while (i < length)
        {

            result += '0' + rand() % 10;
            i++;
        }
        //result += '\0';
        return result;
    }
};