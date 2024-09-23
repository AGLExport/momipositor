# Copyright (C) 2022 The Qt Company Ltd.
# SPDX-License-Identifier: BSD-3-Clause

cmake_minimum_required(VERSION 3.16)
project(momipositor LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml)

qt_add_executable(momipositor
    main.cpp
)

set_target_properties(momipositor PROPERTIES
    WIN32_EXECUTABLE TRUE
    MACOSX_BUNDLE TRUE
)

target_link_libraries(momipositor PUBLIC
    Qt::Core
    Qt::Gui
    Qt::Qml
)

# Resources:
set(momipositor_resource_files
    "main.qml"
    "MomiBar.qml"
    "DateBox.qml"
    "images/12_Footer.png"
    "images/14_Logo.png"
    "images/15_Maps.png"
    "images/16_Multimedia.png"
    "images/17_Dashboard.png"
    "images/18_Setting.png"
    "images/19_Shadow.png"
)

qt6_add_resources(momipositor "momipositor"
    PREFIX
        "/"
    FILES
        ${momipositor_resource_files}
)

install(TARGETS momipositor
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
)
