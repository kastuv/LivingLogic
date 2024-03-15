import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import com.example 1.0


Page
{
    id: imgup
    property var prevBubble: null
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
                Layout.topMargin: 20
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

                MouseArea {
                            anchors.fill: parent
                        //     onClicked: {
                        //         if (Qt.platform.os === "ios") {
                        //             openIOSGallery()
                        //         } else {
                        //             console.log("Gallery access not supported on this platform.")
                        //         }
                        //     }
                        }

            }
            // function openIOSGallery() {
            //         // Access iOS photo gallery using platform-specific code
            //         // This is Objective-C code to access iOS photo gallery
            //         var obj = new Object();
            //         obj.openGallery = function() {
            //             Qt.createQmlObject('import QtQuick 2.0; Image { source: "image.jpg" }', parent, "dynamicSnippet1");
            //         }
            //         obj.openGallery();
            //     }

            Rectangle
            {
                id: gpt
                width: parent.width
                height: 530
                color: "#B37BFD"
                radius: 20


                Text
                {
                    id: lega
                    text: qsTr("Legalities and Permits")
                    font.family: eReg.name
                    font.weight: 400
                    font.pixelSize: 15
                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.topMargin: 20
                    anchors.leftMargin: 20
                    color: "#f2f2f2"
                }

                Rectangle
                {
                    id: line
                    width: parent.width
                    height: 1
                    color: "#f2f2f2"
                    anchors.top: lega.bottom
                    anchors.topMargin: 10
                }

                Rectangle
                {
                            id: scroll
                            height: 370
                            width: parent.width
                            anchors.top: line.top
                            anchors.topMargin: 30
                            anchors.horizontalCenter: parent.horizontalCenter
                            clip: true
                            color: "Transparent"

                            Flickable {
                                id: flickable
                                anchors.fill: parent
                                contentWidth: parent.width
                                contentHeight: contentItem.height
                                flickableDirection: Flickable.VerticalFlick
                                clip: true

                                // Rectangle {
                                //     id: contentItem
                                //     width: parent.width
                                //     height: Math.max(gpt.height, flickable.height)

                                //     // This item will contain all the chat bubbles
                                // }
                            }
                        }


                Text {
                    id: recvv
                    text: qsTr("")
                    wrapMode: Text.Wrap
                    color: "Transparent"
                    Connections
                    {
                        target: gptServer
                        function onMessageReceived(message)
                        {
                            recvv.text = message;
                            createChatBubble(message, false);
                            recvv.height = Math.min(askme.contentHeight, parent.height) + 40
                        }

                    }
                    Component.onCompleted:
                    {
                        console.log("chatReceiver:", gptServer)
                    }
                }

                Rectangle {
                    id: textbox
                    width: 350
                    height: Math.min(askme.contentHeight, parent.height) + 40 // Adjusted to accommodate margins and borders
                    radius: 50
                    color: "transparent"
                    border.color: "#f2f2f2"
                    border.width: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 20

                    TextArea {
                        id: askme
                        placeholderText: qsTr("Ask me")
                        font.pixelSize: 15
                        background: null

                        wrapMode: TextArea.Wrap
                        color: "#f2f2f2"
                        anchors.fill: parent
                        topPadding: 20
                        rightPadding: 25
                        leftPadding: 25
                        verticalAlignment: TextArea.AlignTop

                        onCursorRectangleChanged: {
                            if (cursorRectangle.y + cursorRectangle.height > textbox.height) {

                                //askme.ensureVisible(0, askme.contentHeight)
                            }
                        }

                        onTextChanged: {
                            textbox.height = Math.min(askme.contentHeight, parent.height) + 40 // Adjusted to accommodate margins and borders
                        }
                    }
                }

                Rectangle {
                    id: submitButton
                    width: 30
                    height: 30
                    radius: 30
                    color: "#f2f2f2"
                    anchors.horizontalCenter: parent.horizontalCenter
                    Text {
                        text: qsTr("^")
                        anchors.centerIn: parent
                        color: "#9747FE"
                        font.family: eBold.name
                        font.pixelSize: 25
                    }
                    anchors.bottom: textbox.top
                    anchors.bottomMargin: 10


                    MouseArea {
                        anchors.fill: parent
                        propagateComposedEvents: true
                        onClicked: {
                            var textToSend = askme.text.trim();
                            askme.text = "";
                            if (textToSend !== "") {
                                gptServer.sendToClient(textToSend);
                            }
                            createChatBubble(textToSend, true);
                        }
                    }
                }
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
                                loader.push("qrc:/LivingLogic/parameter.qml")
                            }
                        }
                    }
                }
            }
        }
    }

    function createChatBubble(text, isOutgoing) {
        var bubble = Qt.createQmlObject(
            'import QtQuick 2.15; Rectangle { width: gpt.width - 100; radius: 10; color: "#f2f2f2"; opacity: 0.7; }',
            flickable.contentItem
        );

        var newText = Qt.createQmlObject(
            'import QtQuick 2.15; Text { color: "#f2f2f2"; opacity: 0.7; width: parent.width - 10; wrapMode: Text.Wrap; leftPadding: 20; rightPadding: 20; topPadding: 10; bottomPadding: 10; }',
            bubble
        );

        newText.text = text;

        var bubbleHeight = newText.implicitHeight + 20;
        bubble.height = bubbleHeight;

        if (isOutgoing) {
            bubble.anchors.top = flickable.contentItem.top;
            bubble.anchors.right = flickable.contentItem.right;
            bubble.anchors.rightMargin = 20;
            bubble.opacity = 0.7;
            bubble.color = "#9747FE";
            newText.color = "#f2f2f2";
        } else {
            bubble.anchors.top = prevBubble ? prevBubble.bottom : flickable.contentItem.top;
            bubble.anchors.topMargin = 20;
            bubble.anchors.left = flickable.contentItem.left;
            bubble.anchors.leftMargin = 20;
            bubble.opacity = 0.7;
            bubble.color = "#f2f2f2";
            newText.color = "#9747FE";
        }

        prevBubble = bubble;
        flickable.contentItem.children.push(bubble);

        flickable.contentY = flickable.contentHeight - flickable.height;

        recvv.anchors.top = bubble.bottom + 10;
        textbox.anchors.top = recvv.bottom + 10;
        submitButton.anchors.bottom = textbox.top - 10;
        return bubbleHeight;
    }
}
