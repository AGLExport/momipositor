// SPDX-License-Identifier: GPL-3.0+
// Copyright (C) 2024 Automotive Grade Linux

import QtQuick

Item {
    id: dateBox
    property color timeColor: Qt.rgba(0.9,0.9,0.9,0.9)
    property bool flashing: false
    property string text: ""
    property int pixSize: 20
    property var locale: Qt.locale()
    property string dateString: ""

    Timer {
        id: flashTimer
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            var currentDate = new Date();
            var formatString = "hh:mm ap";
            dateBoxText.text = currentDate.toLocaleTimeString(locale,formatString);
        }
    }

    Text {
        id: dateBoxText
        visible: true
        font.pixelSize: pixSize
        font.bold: true
        color: timeColor
        horizontalAlignment: Text.AlignRight
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.verticalCenter
    }
}
