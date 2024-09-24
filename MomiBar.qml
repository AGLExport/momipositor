// SPDX-License-Identifier: GPL-3.0+
// Copyright (C) 2024 Automotive Grade Linux
import QtQuick
import QtQuick.Effects

Item {
    id: momiBar
    visible: true

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
        shadowEnabled: true
        shadowOpacity: 1.0
        shadowBlur: 0.5
        shadowHorizontalOffset: 4.0
        shadowVerticalOffset: 4.0
    }
}
