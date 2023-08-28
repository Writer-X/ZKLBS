#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QFile>
#include <string>
#include <vector>

#include "successwindow.h"
#include "failwindow.h"

#include "client.h"

//#include "grpc/greeterClient.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    void Set_QSS();
    void Set_image();

private slots:
    void on_button_submit_clicked();
    void on_button_get_clicked();

private:
    Ui::MainWindow *ui;
    QString qlevel;
    QString qpk;
    QString qx;
    QString qy;
    QString qrand;
    QString qtime;
};
#endif // MAINWINDOW_H
