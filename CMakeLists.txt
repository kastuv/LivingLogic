cmake_minimum_required(VERSION 3.16)

<<<<<<< HEAD
project(livlog VERSION 0.1 LANGUAGES CXX)
=======
project(LivingLogic VERSION 0.1 LANGUAGES CXX)
>>>>>>> d822a80 (done1)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

<<<<<<< HEAD
find_package(Qt6 6.2 COMPONENTS Quick Multimedia REQUIRED)

qt_add_executable(applivlog
    main.cpp
)

qt_add_qml_module(applivlog
    URI livlog
=======

find_package(Qt6 6.2 COMPONENTS Quick Network REQUIRED)

#set(APP_ICON_FILES
#    "icon.png"
#)

#qt_add_resources(APP_ICON_RESOURCES
#    ${APP_ICON_FILES}
#)

qt_add_executable(appLivingLogic
    main.cpp
    #${APP_ICON_RESOURCES}
)

qt_add_qml_module(appLivingLogic
    URI LivingLogic
>>>>>>> d822a80 (done1)
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES initial.qml
    RESOURCES resources/loader.qrc
    RESOURCES resources/fonts.qrc
    QML_FILES imgup.qml
    QML_FILES parameter.qml
    QML_FILES partition.qml
    QML_FILES contractor.qml
    QML_FILES report.qml
    SOURCES gptserver.h gptserver.cpp
<<<<<<< HEAD
    RESOURCES cont.qrc
    RESOURCES interiror.qrc
    RESOURCES cons.qrc
=======

>>>>>>> d822a80 (done1)
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
<<<<<<< HEAD
set_target_properties(applivlog PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.applivlog
=======
set_target_properties(appLivingLogic PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appLivingLogic
>>>>>>> d822a80 (done1)
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

<<<<<<< HEAD
target_link_libraries(applivlog
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Multimedia
)

include(GNUInstallDirs)
install(TARGETS applivlog
=======
#set_target_properties(appLivingLogic PROPERTIES
#    XCODE_ATTRIBUTE_ASSETCATALOG_COMPILER_APPICON_NAME "AppIcon"
#)

target_link_libraries(appLivingLogic
    PRIVATE Qt6::Quick
    PRIVATE Qt6::Network)

include(GNUInstallDirs)
install(TARGETS appLivingLogic
>>>>>>> d822a80 (done1)
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
