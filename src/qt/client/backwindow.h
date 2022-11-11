#ifndef BACKWINDOW_H
#define BACKWINDOW_H

#include <QWidget>
#include "mainwindow.h"

namespace Ui {
class backwindow;
}

class backwindow : public QWidget
{
    Q_OBJECT

public:
    explicit backwindow(QWidget *parent = nullptr);
    ~backwindow();

private:
    Ui::backwindow *ui;
};

#endif // BACKWINDOW_H