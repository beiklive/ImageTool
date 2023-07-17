QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17 console

TEMPLATE = app
TARGET = ImageTool

SRC_DIR = code/src
INC_DIR = code/inc
MUI_DIR = code/ui

# libs
SPDLOG_DIR = code/libs/spdlog/include


INCLUDEPATH += $$INC_DIR $$SPDLOG_DIR
OBJECTS_DIR = build/obj/
MOC_DIR = build/
RCC_DIR = build/
UI_DIR = build/

CONFIG(debug,debug|release) {
    DESTDIR = $$absolute_path(bin/debug)
} else {
    DESTDIR = $$absolute_path(bin/release)
}
win32  {
    LIBS += -luser32
}

SOURCES += \
    $$SRC_DIR/main.cpp \
    $$SRC_DIR/monitor.cpp

HEADERS += \
    $$INC_DIR/Common.h \
    $$INC_DIR/monitor.h

FORMS += \
    $$MUI_DIR/mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
