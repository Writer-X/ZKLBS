#ifndef SUCCESSWINDOW_H
#define SUCCESSWINDOW_H

#include <QWidget>
#include <QFile>

#include "mainwindow.h"

namespace Ui {
class SuccessWindow;
}

class SuccessWindow : public QWidget
{
    Q_OBJECT

public:
    explicit SuccessWindow(QWidget *parent = nullptr);
    ~SuccessWindow();

    void Set_QSS();
    void Set_image();

private slots:
    void on_button_back_clicked();

private:
    Ui::SuccessWindow *ui;
};

#endif // SUCCESSWINDOW_H
