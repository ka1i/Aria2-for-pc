/*
* @Author: Serendipity
* @Date:   2019-04-25 18:04:36
* @Last Modified by:   Serendipity
* @Last Modified time: 2019-04-25 18:06:10
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
