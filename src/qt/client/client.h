#ifndef CLIENT_H
#define CLIENT_H
#include "ui_mainwindow.h"

class client
{
public:
    Ui::MainWindow *cui;
    client();
    void getUiCoordinate();
    void getUiTime();
};

#endif // CLIENT_H
