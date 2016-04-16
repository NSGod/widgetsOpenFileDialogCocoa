#-------------------------------------------------
#
# Project created by QtCreator 2016-04-15T21:53:31
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = widgetsOpenFileDialog
TEMPLATE = app


SOURCES += main.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

OBJECTIVE_SOURCES += \
    mainwindow.mm

LIBS += -framework Cocoa
