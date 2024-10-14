#include <cmath>
#include <iostream>

struct IDate {
    int Days;
    int Hours;
    int Minutes;
    int Seconds;
};

IDate secondToDate(int second) {
    int Days = std::floor(second / 86400);
    int Hours = std::floor((second / 3600) - (Days * 24));
    int Minutes = std::floor((second / 60) - (Days * 24 * 60) - (Hours * 60));
    int Seconds = std::floor(second - (Days * 86400) - (Hours * 3600) - (Minutes * 60));

    IDate Export = {Days, Hours, Minutes, Seconds};
    return Export;
}

