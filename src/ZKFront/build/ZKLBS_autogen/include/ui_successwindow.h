/********************************************************************************
** Form generated from reading UI file 'successwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.14.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SUCCESSWINDOW_H
#define UI_SUCCESSWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_SuccessWindow
{
public:
    QLabel *label_token;
    QLabel *label_success;
    QPushButton *button_back;
    QLabel *label_zk;
    QLabel *label_rand2;
    QLabel *label_time2;
    QLabel *label_rand;
    QLabel *label_time;

    void setupUi(QWidget *SuccessWindow)
    {
        if (SuccessWindow->objectName().isEmpty())
            SuccessWindow->setObjectName(QString::fromUtf8("SuccessWindow"));
        SuccessWindow->resize(890, 538);
        SuccessWindow->setStyleSheet(QString::fromUtf8("background-color:rgb(82, 82, 82);"));
        label_token = new QLabel(SuccessWindow);
        label_token->setObjectName(QString::fromUtf8("label_token"));
        label_token->setGeometry(QRect(20, 310, 831, 191));
        label_success = new QLabel(SuccessWindow);
        label_success->setObjectName(QString::fromUtf8("label_success"));
        label_success->setGeometry(QRect(90, 90, 631, 41));
        label_success->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color:rgb(255,255,255);"));
        button_back = new QPushButton(SuccessWindow);
        button_back->setObjectName(QString::fromUtf8("button_back"));
        button_back->setGeometry(QRect(0, 0, 101, 31));
        button_back->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        label_zk = new QLabel(SuccessWindow);
        label_zk->setObjectName(QString::fromUtf8("label_zk"));
        label_zk->setGeometry(QRect(90, 50, 631, 41));
        label_zk->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color:rgb(255,255,255);"));
        label_rand2 = new QLabel(SuccessWindow);
        label_rand2->setObjectName(QString::fromUtf8("label_rand2"));
        label_rand2->setGeometry(QRect(90, 230, 261, 31));
        label_rand2->setStyleSheet(QString::fromUtf8("background-color:rgb(42, 42, 42);\n"
"color: rgb(0, 255, 0);"));
        label_time2 = new QLabel(SuccessWindow);
        label_time2->setObjectName(QString::fromUtf8("label_time2"));
        label_time2->setGeometry(QRect(90, 170, 261, 31));
        label_time2->setStyleSheet(QString::fromUtf8("background-color:rgb(42, 42, 42);\n"
"color: rgb(0, 255, 0);"));
        label_rand = new QLabel(SuccessWindow);
        label_rand->setObjectName(QString::fromUtf8("label_rand"));
        label_rand->setGeometry(QRect(90, 210, 71, 21));
        label_time = new QLabel(SuccessWindow);
        label_time->setObjectName(QString::fromUtf8("label_time"));
        label_time->setGeometry(QRect(90, 150, 61, 16));

        retranslateUi(SuccessWindow);

        QMetaObject::connectSlotsByName(SuccessWindow);
    } // setupUi

    void retranslateUi(QWidget *SuccessWindow)
    {
        SuccessWindow->setWindowTitle(QCoreApplication::translate("SuccessWindow", "Form", nullptr));
        label_token->setText(QString());
        label_success->setText(QCoreApplication::translate("SuccessWindow", "Congratulations, you successfully got a token.", nullptr));
        button_back->setText(QCoreApplication::translate("SuccessWindow", "Back", nullptr));
        label_zk->setText(QCoreApplication::translate("SuccessWindow", "Zero knowledge proves success.", nullptr));
        label_rand2->setText(QCoreApplication::translate("SuccessWindow", "Waiting to get...", nullptr));
        label_time2->setText(QCoreApplication::translate("SuccessWindow", "Waiting to get...", nullptr));
        label_rand->setText(QCoreApplication::translate("SuccessWindow", "Rand:", nullptr));
        label_time->setText(QCoreApplication::translate("SuccessWindow", "Time:", nullptr));
    } // retranslateUi

};

namespace Ui {
    class SuccessWindow: public Ui_SuccessWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SUCCESSWINDOW_H
