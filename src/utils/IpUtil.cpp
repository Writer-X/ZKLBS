#include "curl/curl.h"
#include <iostream>
#include <string.h>
#include <regex>

class IpUtil
{
public:
    std::string getIp()
    {
        static char str[10000000];
        strcpy(str, "");
        CURL *curl = curl_easy_init();

        if (curl)
        {
            CURLcode res_ip;
            curl_easy_setopt(curl, CURLOPT_URL, "https://myip.ipip.net");
            curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_data);
            curl_easy_setopt(curl, CURLOPT_WRITEDATA, str);
            curl_easy_perform(curl);
            curl_easy_cleanup(curl);

            std::string ip;
            ip = get_ip_from_endpoint(str);
            // std::cout << ip << std::endl;
            return ip;
        }
        return "";
    }

private:
    std::string get_ip_from_endpoint(const std::string &endpoint)
    {
        std::regex pattern("(\\d+.){3}\\d+");
        std::smatch result;
        if (regex_search(endpoint, result, pattern))
        {
            return result.str();
        }
        return "";
    }

    static size_t write_data(void *ptr, size_t size, size_t nmemb, char *stream)
    {
        if (strlen((char *)stream) + strlen((char *)ptr) > 999999)
            return 0;
        strcat(stream, (char *)ptr);
        return size * nmemb;
    }
};