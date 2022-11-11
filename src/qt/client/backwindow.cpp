#include "backwindow.h"
#include "ui_backwindow.h"

backwindow::backwindow(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::backwindow)
{
    ui->setupUi(this);
}

backwindow::~backwindow()
{
    delete ui;
}
