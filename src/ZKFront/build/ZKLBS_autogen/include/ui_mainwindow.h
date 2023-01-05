/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.14.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QLabel *label_welcome;
    QPushButton *button_get;
    QPushButton *button_submit;
    QLabel *label_latitude;
    QLabel *label_longitude;
    QLabel *label_hello;
    QLabel *label_lat;
    QLabel *label_lon;
    QLabel *label_image;
    QLabel *label_pk2;
    QLabel *label_pk;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(889, 538);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        label_welcome = new QLabel(centralwidget);
        label_welcome->setObjectName(QString::fromUtf8("label_welcome"));
        label_welcome->setGeometry(QRect(560, 100, 261, 41));
        label_welcome->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";"));
        button_get = new QPushButton(centralwidget);
        button_get->setObjectName(QString::fromUtf8("button_get"));
        button_get->setGeometry(QRect(560, 350, 251, 31));
        button_get->setMaximumSize(QSize(251, 16777215));
        button_get->setStyleSheet(QString::fromUtf8(""));
        button_submit = new QPushButton(centralwidget);
        button_submit->setObjectName(QString::fromUtf8("button_submit"));
        button_submit->setGeometry(QRect(560, 404, 251, 31));
        label_latitude = new QLabel(centralwidget);
        label_latitude->setObjectName(QString::fromUtf8("label_latitude"));
        label_latitude->setGeometry(QRect(560, 210, 61, 16));
        label_longitude = new QLabel(centralwidget);
        label_longitude->setObjectName(QString::fromUtf8("label_longitude"));
        label_longitude->setGeometry(QRect(560, 270, 71, 21));
        label_hello = new QLabel(centralwidget);
        label_hello->setObjectName(QString::fromUtf8("label_hello"));
        label_hello->setGeometry(QRect(560, 50, 261, 41));
        label_hello->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";"));
        label_lat = new QLabel(centralwidget);
        label_lat->setObjectName(QString::fromUtf8("label_lat"));
        label_lat->setGeometry(QRect(560, 230, 261, 31));
        label_lat->setStyleSheet(QString::fromUtf8("background-color:rgb(42, 42, 42);\n"
"color: rgb(0, 255, 0);"));
        label_lon = new QLabel(centralwidget);
        label_lon->setObjectName(QString::fromUtf8("label_lon"));
        label_lon->setGeometry(QRect(560, 290, 261, 31));
        label_lon->setStyleSheet(QString::fromUtf8("background-color:rgb(42, 42, 42);\n"
"color: rgb(0, 255, 0);"));
        label_image = new QLabel(centralwidget);
        label_image->setObjectName(QString::fromUtf8("label_image"));
        label_image->setGeometry(QRect(10, 50, 501, 391));
        label_pk2 = new QLabel(centralwidget);
        label_pk2->setObjectName(QString::fromUtf8("label_pk2"));
        label_pk2->setGeometry(QRect(560, 170, 261, 31));
        label_pk2->setStyleSheet(QString::fromUtf8("background-color:rgb(42, 42, 42);\n"
"color: rgb(0, 255, 0);"));
        label_pk = new QLabel(centralwidget);
        label_pk->setObjectName(QString::fromUtf8("label_pk"));
        label_pk->setGeometry(QRect(560, 150, 61, 16));
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 889, 22));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        label_welcome->setText(QCoreApplication::translate("MainWindow", "Welcome to ZKLBS", nullptr));
        button_get->setText(QCoreApplication::translate("MainWindow", "Get", nullptr));
        button_submit->setText(QCoreApplication::translate("MainWindow", "Submit", nullptr));
        label_latitude->setText(QCoreApplication::translate("MainWindow", "Latitude", nullptr));
        label_longitude->setText(QCoreApplication::translate("MainWindow", "Longitude", nullptr));
        label_hello->setText(QCoreApplication::translate("MainWindow", "Hello", nullptr));
        label_lat->setText(QCoreApplication::translate("MainWindow", "Waiting to get...", nullptr));
        label_lon->setText(QCoreApplication::translate("MainWindow", "Waiting to get...", nullptr));
        label_image->setText(QString());
        label_pk2->setText(QCoreApplication::translate("MainWindow", "Waiting to get...", nullptr));
        label_pk->setText(QCoreApplication::translate("MainWindow", "Pk", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
