#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QDebug>
#import <Cocoa/Cocoa.h>


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

void MainWindow::on_openFileButton_clicked()
{
    NSOpenPanel *openPanel = [NSOpenPanel openPanel];
    [openPanel setAllowedFileTypes:[NSArray arrayWithObjects:@"mts", @"mov", nil]];
    [openPanel setAllowsMultipleSelection:YES];
    [openPanel setTreatsFilePackagesAsDirectories:YES];
    [openPanel setTitle:@"Open Video File"];

    NSInteger result = [openPanel runModal];

    QStringList stringList;

    if (result == NSFileHandlingPanelOKButton) {
        NSArray *URLs = [openPanel URLs];
        NSLog(@"URLs == %@", URLs);
        for (NSURL *URL in URLs) {
            stringList += QString::fromNSString(URL.path);
        }
        // do something with stringList
        qDebug() << "filePaths == " << stringList;
    }
}
