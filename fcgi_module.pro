QT += core network sql
QT -= gui

CONFIG += c++14

TARGET = fcgi_module
CONFIG += console
CONFIG -= app_bundle
INCLUDEPATH += $$PWD/libs/include

INCLUDEPATH += /home/vazg/Dev/QxOrm/include
LIBS+= -L"/home/vazg/Dev/QxOrm/lib"

LIBS+= -L$$PWD/libs/qfcgi -lQFCgi

CONFIG(debug, debug|release) {
TARGET = testQxOrmd
LIBS += -lQxOrmd
}else {
TARGET = testQxOrm
LIBS += -lQxOrm
} # CONFIG(debug, debug|release)

TEMPLATE = app
SOURCES +=  src/main.cpp \
    src/admin.cpp \
    src/fcgi_module.cpp


# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += include/admin.h \
    include/fcgi_module.h
