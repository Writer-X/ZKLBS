/********************************************************************************
** Form generated from reading UI file 'failwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.14.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_FAILWINDOW_H
#define UI_FAILWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_FailWindow
{
public:
    QLabel *label_success;
    QPushButton *button_back;
    QLabel *label_zk;
    QLabel *label_image;

    void setupUi(QWidget *FailWindow)
    {
        if (FailWindow->objectName().isEmpty())
            FailWindow->setObjectName(QString::fromUtf8("FailWindow"));
        FailWindow->resize(889, 537);
        FailWindow->setStyleSheet(QString::fromUtf8("background-color:rgb(82, 82, 82);"));
        label_success = new QLabel(FailWindow);
        label_success->setObjectName(QString::fromUtf8("label_success"));
        label_success->setGeometry(QRect(100, 90, 651, 41));
        label_success->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color:rgb(255,255,255);"));
        button_back = new QPushButton(FailWindow);
        button_back->setObjectName(QString::fromUtf8("button_back"));
        button_back->setGeometry(QRect(0, 0, 101, 31));
        button_back->setStyleSheet(QString::fromUtf8("color: rgb(255, 255, 255);"));
        label_zk = new QLabel(FailWindow);
        label_zk->setObjectName(QString::fromUtf8("label_zk"));
        label_zk->setGeometry(QRect(100, 50, 631, 41));
        label_zk->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color:rgb(255,255,255);"));
        label_image = new QLabel(FailWindow);
        label_image->setObjectName(QString::fromUtf8("label_image"));
        label_image->setGeometry(QRect(30, 300, 831, 191));

        retranslateUi(FailWindow);

        QMetaObject::connectSlotsByName(FailWindow);
    } // setupUi

    void retranslateUi(QWidget *FailWindow)
    {
        FailWindow->setWindowTitle(QCoreApplication::translate("FailWindow", "Form", nullptr));
        label_success->setText(QCoreApplication::translate("FailWindow", "Please confirm whether the conditions are met.", nullptr));
        button_back->setText(QCoreApplication::translate("FailWindow", "Back", nullptr));
        label_zk->setText(QCoreApplication::translate("FailWindow", "Zero knowledge proves fail.", nullptr));
        label_image->setText(QString());
    } // retranslateUi

};

namespace Ui {
    class FailWindow: public Ui_FailWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_FAILWINDOW_H
