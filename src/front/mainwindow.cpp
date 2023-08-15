#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    Set_QSS();
    Set_image();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::Set_QSS()
{
    QFile file(":/QSS/myQss.qss");
    file.open(QFile::ReadOnly);
    QString styleSheet = tr(file.readAll());
    this->setStyleSheet(styleSheet);
    file.close();
}

void MainWindow::Set_image()
{
    QPixmap *pix = new QPixmap(":/Image/blackMap.png");
    QSize sz = ui->label_image->size();
    ui->label_image->setPixmap(pix->scaled(sz));
}

void MainWindow::on_button_get_clicked()
{
    qlevel = ui->Level->toPlainText();
    qpk = ui->PK->toPlainText();
    qx = ui->X->toPlainText();
    qy = ui->Y->toPlainText();


    std::string slevel = qlevel.toStdString();
    std::string spk = qpk.toStdString();
    std::string sx = qx.toStdString();
    std::string sy = qy.toStdString();
    int lev = stoi(slevel);

    Client c;
    std::vector<std::string> result_vector = c.run_client_to_server(spk,sx,sy);

    qrand = QString::fromStdString(result_vector[0]);
    qtime = QString::fromStdString(result_vector[1]);
    ui->Rand->setText(qrand);
    ui->Time->setText(qtime);

}

void MainWindow::on_button_submit_clicked()
{
    std::string slevel = qlevel.toStdString();
    std::string spk = qpk.toStdString();
    std::string sx = qx.toStdString();
    std::string sy = qy.toStdString();
    std::string srand = qrand.toStdString();
    std::string stime = qtime.toStdString();
    int lev = stoi(slevel);

    Client c;
    bool is_verified = c.run_client_to_verifier(lev,spk,sx,sy,srand,stime);

    if(is_verified)
    {
        this->close();
        SuccessWindow *sw = new SuccessWindow();
        sw->show();
    }
    else
    {
        this->close();
        FailWindow *fw = new FailWindow();
        fw->show();
    }
}
