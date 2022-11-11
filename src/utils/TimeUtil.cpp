#include <iostream>
#include <time.h>

class TimeUtil
{
public:
    void init()
    {
        time_t t = time(NULL);
        stime = localtime(&t);
    }
    int getYear()
    {
        return stime->tm_year;
    }
    int getMon()
    {
        return stime->tm_mon;
    }
    int getMday()
    {
        return stime->tm_mday;
    }
    int getHour()
    {
        return stime->tm_hour;
    }
    int getMin()
    {
        return stime->tm_min;
    }
    int getSec()
    {
        return stime->tm_sec;
    }
private:
    struct tm *stime;
};

