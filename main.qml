import QtQuick
import QtQuick.Controls

Window
{
    width: 430
    height: 100
    visible: true

    StackView
    {
        id: loader
        anchors.fill: parent
        initialItem: "qrc:/livlog/initial.qml"
    }
}
