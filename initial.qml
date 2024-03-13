import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    id: initialpage
    width: 430
    height: 1000
    visible: true

    background: Rectangle
    {
        color: "#9747FE"
    }

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
                    text: qsTr("Scan your room?")
                    FontLoader
                    {
                        id: eBold;
                        source: "qrc:/eBold";
                    }
                    font.family: eBold.name
                    font.pixelSize: 40
                    font.weight: 550
                    color: "#f2f2f2"
                    Layout.alignment: Qt.AlignCenter
                }

                Text {
                    id: des;
                    text: qsTr("(Click 'yes' to allow camera access)")
                    FontLoader
                    {
                        id: eReg;
                        source: "qrc:/eRegular";
                    }
                    font.family: eReg.name;
                    font.pixelSize: 12;
                    color: "#FFFFFF";
                    Layout.alignment: Qt.AlignCenter
                }
            }


            RowLayout
            {
                id: ynbtn
                Layout.alignment: Qt.AlignCenter
                spacing: 10
                Rectangle
                {
                    id: yes
                    height: 30
                    width: 150
                    radius: 15
                    color: "#AB7DF5"
                    Text {
                        text: qsTr("Yes")
                        font.family: eReg.name;
                        font.pixelSize: 15;
                        color: "#f2f2f2";
                        anchors.centerIn: parent
                    }
                }

                Rectangle
                {
                    id: no
                    height: 30
                    width: 150
                    radius: 15
                    color: "#AB7DF5"
                    Text {
                        id: nT
                        text: qsTr("No")
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
                            loader.push("qrc:/LivingLogic/imgup.qml")
                        }
                    }
                }
            }
        }
    }
}
