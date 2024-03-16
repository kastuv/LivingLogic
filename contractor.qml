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
                loader.push("qrc:/livlog/partition.qml")
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
            spacing: 5

            Text {
                id: text1
                FontLoader
                {
                    id: eBold;
                    source: "qrc:/eBold";
                }
                text: qsTr("<html>Demographically positive <b>Contractors</b></html>")
                font.family: eBold.name
                font.weight: 600
                font.pixelSize: 17
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.topMargin: 40
                color: "#f2f2f2"
            }

            Rectangle
            {
                id:conScorll
                width: 430
                height: 185
                color: "Transparent"
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                Layout.topMargin: -15
                Layout.leftMargin: -22.5
                clip: true

                Flickable
                {
                    anchors.fill: parent
                    contentHeight: parent.height
                    contentWidth: 845
                    flickableDirection: Flickable.HorizontalFlick
                    clip: true

                    RowLayout
                    {
                        anchors.centerIn: parent
                        spacing: 20
                        Rectangle
                        {
                            id: con1
                            width: 145
                            height: 145
                            color: "#f2f2f2"
                            radius: 20
                            clip: true

                            Image {
                                id: cn1
                                source: "qrc:/c1"
                                width: 145 - 15
                                height: 145 -15
                                anchors.centerIn: parent
                                fillMode: Image.PreserveAspectFit
                                clip: true
                            }

                            Rectangle
                            {
                                width: 145
                                height: 50
                                color: "#f2f2f2"
                                radius: 20
                                anchors.bottom: parent.bottom
                                anchors.horizontalCenter: parent.horizontalCenter
                                clip: true

                                Text {
                                    text: qsTr("Komandor")
                                    font.family: eBold.name
                                    color: "#333333"
                                    font.weight: 600
                                    font.pixelSize: 17
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                                Text {
                                    text: qsTr("view more")
                                    FontLoader
                                    {
                                        id: eReg;
                                        source: "qrc:/eRegular";
                                    }
                                    font.family: eReg.name
                                    color: "#9747FE"
                                    font.weight: 400
                                    font.pixelSize: 12
                                    anchors.top: parent.top
                                    anchors.topMargin: 30
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                            }
                            MouseArea
                            {
                                anchors.fill: parent

                                onClicked:
                                {
                                    Qt.openUrlExternally("https://www.komandor.ca/product-gallery/speciality-designs/aluminum-partitions/?gad_source=1&gclid=Cj0KCQjwhtWvBhD9ARIsAOP0GoivbtcGHh4zFEViKUXDBCL0SMZVCNxEK9jMMeTer-W9L4XhHGgQlNoaAoBCEALw_wcB");
                                }
                            }
                        }
                        Rectangle
                        {
                            id: con2
                            width: 145
                            height: 145
                            color: "#f2f2f2"
                            radius: 20
                            clip: true

                            Image {
                                id: cn2
                                source: "qrc:/c2"
                                width: 145 - 15
                                height: 145 -15
                                anchors.centerIn: parent
                                fillMode: Image.PreserveAspectFit
                                clip: true
                            }

                            Rectangle
                            {
                                width: 145
                                height: 50
                                color: "#f2f2f2"
                                radius: 20
                                anchors.bottom: parent.bottom
                                anchors.horizontalCenter: parent.horizontalCenter
                                clip: true

                                Text {
                                    text: qsTr("Partition")
                                    font.family: eBold.name
                                    color: "#333333"
                                    font.weight: 600
                                    font.pixelSize: 17
                                    anchors.top: parent.top
                                    anchors.topMargin: 10
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }
                                Text {
                                    text: qsTr("view more")
                                    font.family: eReg.name
                                    color: "#9747FE"
                                    font.weight: 400
                                    font.pixelSize: 12
                                    anchors.top: parent.top
                                    anchors.topMargin: 30
                                    anchors.horizontalCenter: parent.horizontalCenter
                                }

                            }
                            MouseArea
                            {
                                anchors.fill: parent

                                onClicked:
                                {
                                    Qt.openUrlExternally("https://www.partitions.com/about");
                                }
                            }
                        }

                        Rectangle
                        {
                            id: con3
                            width: 145
                            height: 145
                            color: "#f2f2f2"
                            radius: 20
                        }
                        Rectangle
                        {
                            id: con4
                            width: 145
                            height: 145
                            color: "#f2f2f2"
                            radius: 20
                        }
                        Rectangle
                        {
                            id: con5
                            width: 145
                            height: 145
                            color: "#f2f2f2"
                            radius: 20
                        }
                    }
                }
            }

            Text {
                id: text2
                text: qsTr("<html>Demographically positive <b>Contractors</b></html>")
                font.family: eBold.name
                font.weight: 600
                font.pixelSize: 17
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                color: "#f2f2f2"
            }

            Rectangle
            {
                id:conScorll2
                width: 430
                height: 185
                color: "#f2f2f2"
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                Layout.topMargin: -5
                Layout.leftMargin: -22.5
            }

            Text {
                id: text3
                text: qsTr("<html>Demographically positive <b>Contractors</b></html>")
                font.family: eBold.name
                font.weight: 600
                font.pixelSize: 17
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                color: "#f2f2f2"
            }

            Rectangle
            {
                id:conScorll3
                width: 430
                height: 185
                color: "#f2f2f2"
                Layout.alignment: Qt.AlignTop | Qt.AlignLeft
                Layout.topMargin: -5
                Layout.leftMargin: -22.5
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
                                loader.push("qrc:/livlog/report.qml")
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
                                loader.push("qrc:/livlog/report.qml")
                            }
                        }
                    }
                }
            }
        }
    }
}
