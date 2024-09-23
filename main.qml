// Copyright (C) 2017 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR BSD-3-Clause

import QtQuick
import QtWayland.Compositor
import QtWayland.Compositor.IviApplication
import QtWayland.Compositor.XdgShell
import QtQuick.Window

WaylandCompositor {
    //! [wayland output]
    WaylandOutput {
        sizeFollowsWindow: true
        window: Window {
            id: mainScreenWindow
            width: 1920
            height: 1080
            color: "#004f00"
            //flags: Qt.FramelessWindowHint
            visible: true
            Image {
                id: backgroundAGL
                width: parent.width
                height: parent.height
                z: 0
                visible: true
                fillMode: Image.Pad
                source: "images/14_Logo.png"
            }

            function showAppList() {
                appLayer2010.showAppTile();
                appLayer2011.showAppTile();
                appLayer2012.showAppTile();
                appLayer2013.showAppTile();
            }
            function hideAppList() {
                momibarMouseArea.onList = false;
                appLayer2010.hideApp();
                appLayer2011.hideApp();
                appLayer2012.hideApp();
                appLayer2013.hideApp();
            }

            Rectangle {
                id: appLayer2010
                z: 10
                visible: false
                color: "#000000"
                Image {
                    id: backgroundAppLayer2010
                    width: parent.width
                    height: parent.height
                    visible: true
                    fillMode: Image.Pad
                    source: "images/15_Maps.png"
                }
                Text {
                    anchors.centerIn: parent
                    text: "APP Layer 2010"
                }

                MouseArea {
                    id: appLayer2010MouseArea
                    enabled: false
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton

                    onClicked : {
                        mainScreenWindow.hideAppList();
                        appLayer2010.showApp();
                    }
                }

                function showAppTile() {
                    width = (parent.width / 3);
                    height = (parent.height / 3);
                    x = (parent.width / 8) * 1;
                    y = (parent.height / 8) * 1;
                    visible = true;
                    appLayer2010MouseArea.enabled = true;
                }

                function showApp() {
                    width = parent.width;
                    height = parent.height;
                    x = 0;
                    y = 0;
                    visible = true;
                    appLayer2010MouseArea.enabled = false;
                }

                function hideApp() {
                    visible = false;
                    appLayer2010MouseArea.enabled = false;
                }
            }
            Rectangle {
                id: appLayer2011
                width: parent.width
                height: parent.height
                z: 10
                visible: false
                color: "#000000"
                Image {
                    id: backgroundAppLayer2011
                    width: parent.width
                    height: parent.height
                    visible: true
                    fillMode: Image.Pad
                    source: "images/16_Multimedia.png"
                }
                Text {
                    anchors.centerIn: parent
                    text: "APP Layer 2011"
                }

                MouseArea {
                    id: appLayer2011MouseArea
                    enabled: false
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton

                    onClicked : {
                        mainScreenWindow.hideAppList();
                        appLayer2011.showApp();
                    }
                }

                function showAppTile() {
                    width = (parent.width / 3);
                    height = (parent.height / 3);
                    x = (parent.width / 8) * 4;
                    y = (parent.height / 8) * 1;
                    visible = true;
                    appLayer2011MouseArea.enabled = true;
                }

                function showApp() {
                    width = parent.width;
                    height = parent.height;
                    x = 0;
                    y = 0;
                    visible = true;
                    appLayer2011MouseArea.enabled = false;
                }

                function hideApp() {
                    visible = false;
                    appLayer2011MouseArea.enabled = false;
                }
            }
            Rectangle {
                id: appLayer2012
                z: 10
                visible: false
                color: "#000000"
                Image {
                    id: backgroundAppLayer2012
                    width: parent.width
                    height: parent.height
                    visible: true
                    fillMode: Image.Pad
                    source: "images/17_Dashboard.png"
                }
                Text {
                    anchors.centerIn: parent
                    text: "APP Layer 2012"
                }

                MouseArea {
                    id: appLayer2012MouseArea
                    enabled: false
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton

                    onClicked : {
                        mainScreenWindow.hideAppList();
                        appLayer2012.showApp();
                    }
                }

                function showAppTile() {
                    width = (parent.width / 3);
                    height = (parent.height / 3);
                    x = (parent.width / 8) * 1;
                    y = (parent.height / 8) * 4;
                    visible = true;
                    appLayer2012MouseArea.enabled = true;
                }

                function showApp() {
                    width = parent.width;
                    height = parent.height;
                    x = 0;
                    y = 0;
                    visible = true;
                    appLayer2012MouseArea.enabled = false;
                }

                function hideApp() {
                    visible = false;
                    appLayer2012MouseArea.enabled = false;
                }
            }
            Rectangle {
                id: appLayer2013
                z: 10
                visible: false
                color: "#000000"
                Image {
                    id: backgroundAppLayer2013
                    width: parent.width
                    height: parent.height
                    visible: true
                    fillMode: Image.Pad
                    source: "images/18_Setting.png"
                }
                Text {
                    anchors.centerIn: parent
                    text: "APP Layer 2013"
                }

                MouseArea {
                    id: appLayer2013MouseArea
                    enabled: false
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton

                    onClicked : {
                        mainScreenWindow.hideAppList();
                        appLayer2013.showApp();
                    }
                }

                function showAppTile() {
                    width = (parent.width / 3);
                    height = (parent.height / 3);
                    x = (parent.width / 8) * 4;
                    y = (parent.height / 8) * 4;
                    visible = true;
                    appLayer2013MouseArea.enabled = true;
                }

                function showApp() {
                    width = parent.width;
                    height = parent.height;
                    x = 0;
                    y = 0;
                    visible = true;
                    appLayer2013MouseArea.enabled = false;
                }

                function hideApp() {
                    visible = false;
                    appLayer2013MouseArea.enabled = false;
                }
            }
            MomiBar {
                id: momibar
                width: 200
                height: 125
                x: 1920 - width
                y: 1080 - height
                z: 100
                visible: true
                focus: true

                MouseArea {
                    id: momibarMouseArea
                    property bool onList: false
                    anchors.fill: parent
                    acceptedButtons: Qt.LeftButton

                    onClicked : {
                        if (onList === false) {
                            mainScreenWindow.showAppList();
                            onList = true;
                        } else {
                            mainScreenWindow.hideAppList();
                            onList = false;
                        }
                    }
                }
            }
        }
    }
    //! [wayland output]
    Component {
        id: chromeComponent
        ShellSurfaceItem {
            anchors.fill: parent
            onSurfaceDestroyed: destroy()
            //! [resizing]
            onWidthChanged: handleResized()
            onHeightChanged: handleResized()
            function handleResized() {
                if (width > 0 && height > 0)
                    shellSurface.sendConfigure(Qt.size(width, height));
            }
            //! [resizing]
        }
    }
    //! [connecting]
    IviApplication {
        onIviSurfaceCreated: (iviSurface) =>  {
            var surfaceArea;
            var validValue = true;

            if (iviSurface.iviId === 2010) {
               surfaceArea = appLayer2010;
            } else if (iviSurface.iviId === 2011) {
                surfaceArea = appLayer2011;
            } else if (iviSurface.iviId === 2012) {
                surfaceArea = appLayer2012;
            } else if (iviSurface.iviId === 2013) {
                surfaceArea = appLayer2013;
            } else {
                validValue = false;
            }

            if (validValue === true) {
                var item = chromeComponent.createObject(surfaceArea, { "shellSurface": iviSurface } );
                item.handleResized();
            }
        }
    }
    XdgShell {
        onXdgSurfaceCreated: (xdgSurface) =>  {
            var item = chromeComponent.createObject(appLayer2013, { "shellSurface": iviSurface } );
            item.handleResized();
        }
    }
    //! [connecting]
}
