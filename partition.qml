import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    id: parameters
    width: 430
    height: 1000
    visible: true
    background: Rectangle
    {
        color: "#f2f2f2"
    }

    Image
    {
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
                loader.push("qrc:/livlog/parameter.qml")
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
        height: 850
        width: 430
        radius: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: logo.bottom
        color: "#9747FE"

        ColumnLayout
        {
            id: bodyEl
            width: 385
            height: 850
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            spacing: 10

            ColumnLayout
            {
                width: 385
                height: 850
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                spacing: 1

                Text {
                    id: text1
                    FontLoader
                    {
                        id: eBold;
                        source: "qrc:/eBold";
                    }
                    text: qsTr("Choose any one optimal generated design partition \nfor your space.")
                    font.family: eBold.name
                    font.weight: 600
                    font.pixelSize: 16
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    Layout.topMargin: 20
                    color: "#f2f2f2"
                }

                Text {
                    id: text2
                    FontLoader
                    {
                        id: eReg;
                        source: "qrc:/eRegular";
                    }
                    text: qsTr("(Adjust the previous settings to change your needs, and generate \nagain.)")
                    font.family: eReg.name
                    font.weight: 400
                    font.pixelSize: 13
                    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                    color: "#f2f2f2"
                }

            }

            Rectangle
            {
                id: p1
                width: parent.width
                height: 185
                color: "#f2f2f2"
                radius: 20
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle
            {
                id: p2
                width: parent.width
                height: 185
                color: "#f2f2f2"
                radius: 20
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle
            {
                id: p3
                width: parent.width
                height: 185
                color: "#f2f2f2"
                radius: 20
                Layout.alignment: Qt.AlignHCenter
            }

            Rectangle
            {
                id: nav
                height: 55
                width: 385
                color: "#B37BFD"
                radius: 20
                Layout.alignment: Qt.AlignBottom | Qt.AlignHCenter
                Layout.bottomMargin: 100

                Image
                {
                    id: home
                    source: "qrc:/home"
                    width: 20
                    height: 20
                    fillMode: Image.PreserveAspectFit
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 50

                    Rectangle
                    {
                        anchors.centerIn: parent
                        height: 40
                        width: 40
                        color: "Transparent"
                        MouseArea
                        {
                            anchors.fill: parent
                            onClicked:
                            {
                                loader.push("qrc:/livlog/imgup.qml")
                            }
                        }
                    }
                }

                Image
                {
                    id: cam
                    source: "qrc:/cam"
                    width: 30
                    height: 30
                    fillMode: Image.PreserveAspectFit
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Image
                {
                    id: setting
                    source: "qrc:/setting"
                    width: 20
                    height: 20
                    fillMode: Image.PreserveAspectFit
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 50

                    Rectangle
                    {
                        anchors.centerIn: parent
                        height: 40
                        width: 40
                        color: "Transparent"

                        MouseArea
                        {
                            anchors.fill: parent
                            onClicked:
                            {
                                loader.push("qrc:/livlog/contractor.qml")
                            }
                        }
                    }
                }
            }
        }
    }
}
