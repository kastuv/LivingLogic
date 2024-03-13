import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    id: imgup
    width: 430
    height: 1000
    visible: true
    background: Rectangle
    {
        color: "#f2f2f2"
    }

    Image {
        id: logo
        source: "qrc:/icon.png"
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 5
        width: 70
        height: 70
        fillMode: Image.PreserveAspectFit
    }

    Rectangle
    {
        id: backbtn
        width: 40
        height: 40
        radius: 40
        color: "#AB7DF5"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        opacity: 0.1
        layer.enabled: true

        MouseArea
        {
            id: backA
            anchors.fill: parent

            onPressed:
            {
                backbtn.opacity = 0.5
            }

            onClicked: {
                loader.push("qrc:/LivingLogic/initial.qml")
            }
        }
    }

    Image {
        id: backicon
        source: "qrc:/arrow"
        anchors.centerIn: backbtn
        width: 10
        height: 10
        fillMode: Image.PreserveAspectFit
    }

    Rectangle
    {
        id: body
        height: 950
        width: 430
        radius: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: logo.bottom
        anchors.topMargin: 5
        color: "#9747FE"

        ColumnLayout
        {
            id: bodyEl
            width: 385
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            spacing: 15

            Text {
                id: text1
                FontLoader
                {
                    id: eBold;
                    source: "qrc:/eBold";
                }
                text: qsTr("Enter your Blueprint")
                font.family: eBold.name
                font.weight: 600
                font.pixelSize: 15
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.topMargin: 40
                color: "#f2f2f2"
            }

            Rectangle
            {
                id:uploadbox
                width: parent.width
                height: 80
                radius: 20
                border.width: 3
                color: "Transparent"
                border.color: "#f2f2f2"

                ColumnLayout
                {
                    anchors.fill: parent
                    spacing: -35
                    Text {
                        id: drop
                        text: qsTr("<html>Drop your image here or <b>browse</b><html>")
                        font.family: eReg.name
                        font.weight: 500
                        font.pixelSize: 15
                        Layout.alignment: Qt.AlignHCenter
                        color: "#f2f2f2"
                    }
                    Text {
                        id: name
                        text: qsTr("Max file size 20MB")
                        FontLoader
                        {
                            id: eReg;
                            source: "qrc:/eRegular";
                        }
                        font.family: eReg.name
                        font.weight: 400
                        font.pixelSize: 10
                        Layout.alignment: Qt.AlignHCenter
                        color: "#f2f2f2"
                    }
                }
            }

            Rectangle
            {
                id: gpt
                width: parent.width
                height: 560
                color: "#B37BFD"
            }
        }
    }

}
