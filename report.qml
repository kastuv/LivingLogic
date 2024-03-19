import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    id: report
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
                loader.push("qrc:/LivingLogic/imgup.qml")
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
            spacing: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin:200

            Rectangle
            {
                id:loadgif
                height: 200
                width: 200
                Layout.alignment: Qt.AlignCenter

                AnimatedImage
                {
                    height: 300
                    width: 300
                    source: "qrc:/loader"
                    fillMode: Image.PreserveAspectFit
                    anchors.fill: parent
                    clip: true
                }
            }

            ColumnLayout
            {
                spacing: 10
                Layout.alignment: Qt.AlignCenter
                ColumnLayout
                {

                    Text {
                        id: scan
                        text: qsTr("Download your report.")
                        FontLoader
                        {
                            id: eBold;
                            source: "qrc:/eBold";
                        }
                        font.family: eBold.name
                        font.pixelSize: 30
                        font.weight: 550
                        color: "#f2f2f2"
                        Layout.alignment: Qt.AlignCenter
                    }

                    Text {
                        id: des;
                        text: qsTr("(.pdf)")
                        FontLoader
                        {
                            id: eReg;
                            source: "qrc:/eRegular";
                        }
                        font.family: eReg.name;
                        font.pixelSize: 12;
                        color: "#f2f2f2";
                        Layout.alignment: Qt.AlignCenter
                    }
                }

                Rectangle
                {
                    id: no
                    height: 30
                    width: 250
                    radius: 15
                    color: "#AB7DF5"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
                    Layout.topMargin: 10
                    Text {
                        id: nT
                        text: qsTr("V")
                        font.family: eReg.name;
                        font.pixelSize: 15;
                        color: "#f2f2f2";
                        anchors.centerIn: parent
                    }

                    MouseArea
                    {
                        id:nA
                        anchors.fill: parent
                        onPressed:
                        {
                            no.color = "#f2f2f2"
                            nT.color = "#9747FE"

                        }

                        onClicked:
                        {
                            var textToSend = "report::";
                            if (textToSend !== "") {
                                var fileName = "/Users/kaustuvpokharel/Documents/LivingLogic-app/report.pdf";
                                gptServer.sendReceiveAndSaveFile(textToSend, fileName);
                            }
                        }
                    }
                }
            }
        }
    }
}
