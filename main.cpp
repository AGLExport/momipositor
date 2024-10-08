// Copyright (C) 2017 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

#include <QtCore/QUrl>
#include <QtCore/QDebug>
#include <QCursor>
#include <QtGui/QGuiApplication>

#include <QtQml/QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    app.setOverrideCursor(QCursor(Qt::BlankCursor));
    QQmlApplicationEngine appEngine(QUrl("qrc:///main.qml"));

    return app.exec();
}
