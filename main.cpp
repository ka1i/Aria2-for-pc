/*
* @Author: Serendipity
* @Date:   2019-04-25 18:07:35
* @Last Modified by:   Serendipity
* @Last Modified time: 2019-04-25 18:59:05
*/

#include <mainwindow.h>
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    MainWindow window;
    window.show();

    return app.exec();
}
