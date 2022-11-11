#include "mainwindow.h"
#include "./ui_mainwindow.h"
#include "../../grpc/greeterClient.cpp"
MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent), ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ct.cui = ui;
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    ct.getUiCoordinate();
    ct.getUiTime();
}

void MainWindow::on_pushButton_2_clicked()
{
    RunClient();
    this->close();
    backwindow *bw = new backwindow();
    bw->show();
}
