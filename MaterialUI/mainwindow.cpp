/*
* @Author: Mardan-M
* @Date:   2019-04-25 20:32:08
* @Email:	Mardan_66@outlook.com
* @Last Modified by:   Mardan-M
* @Last Modified time: 2019-04-25 20:32:52
*/

#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}
