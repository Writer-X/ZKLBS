#include <client.h>
#include "../../utils/TimeUtil.cpp"
#include "../../utils/CoordinateUtil.cpp"

client::client()
{

}

void client::getUiCoordinate()
{
    CoordinateUtil coordinateUtil;
    std::pair<long int, long int> coordinate = coordinateUtil.getCoordinate();
    std::cout << coordinate.first << " " << coordinate.second << std::endl;
    QString qlat, qlon;
    qlat = QString::number(coordinate.first,10);
    qlon = QString::number(coordinate.second,10);

    cui->label_4->setText(qlat);
    cui->label_5->setText(qlon);
}
void client::getUiTime()
{
    QString qtime;
    TimeUtil timeUtil;
    timeUtil.init();
    int time = timeUtil.getHour();
    std::cout << time << std::endl;
    qtime = QString::number(time,10);
    cui->label_7->setText(qtime);
}
