// SPDX-License-Identifier: GPL-3.0+
// Copyright (C) 2024 Automotive Grade Linux
import QtQuick
import QtQuick.Effects

Item {
    id: momiBar
    visible: true
    //color: "transparent"

    Image {
        id: logoAGL
        width: 200
        height: 125
        fillMode: Image.PreserveAspectFit
        source: "images/14_Logo.png"
    }
    MultiEffect {
        source: logoAGL
        anchors.fill: logoAGL
        brightness: 0.4
        saturation: 0.2
        blurEnabled: true
        blurMax: 64
        blur: 1.0
    }
}
