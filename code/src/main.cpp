#include "monitor.h"

#include <QApplication>
#include <spdlog/spdlog.h>
int main(int argc, char *argv[])
{
    // 输出日志消息
    spdlog::info("Hello, spdlog!");
    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    return a.exec();
}
