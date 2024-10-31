import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    color: "#ffe100"
    title: qsTr("Hello World")

    Column {
        id: column
        x: (parent.width/2)-(parent.width/4)
        y: (parent.height/2)-(parent.height/4)
        width: (parent.width/2)
        height: 240
        spacing: 10
        bottomPadding: 10

        MyInput {
            id: myInput
            width: parent.width
            placeHolder: "Usuario"
        }

        MyInput {
            id: myInput1
            width: parent.width
            placeHolder: "Contraseña"
        }

        Text {
            id: _text
            text: qsTr("")
            font.pixelSize: 12
            width: parent.width
            padding: 10
            horizontalAlignment: Text.AlignHCenter
        }

        Button {
            id: button
            text: qsTr("Login")
            font.letterSpacing: 1
            font.capitalization: Font.AllUppercase
            font.bold: true
            font.weight: Font.Bold
            rightPadding: 10
            bottomPadding: 10
            leftPadding: 10
            topPadding: 10
            width: parent.width
            background:
                Rectangle {
                id: rectangle
                color: "#ffffff"
                radius: 6
                border.color: "#E7AD00"
                border.width: 1
            }

            Connections {
                target: button
                onClicked: console.log("clicked")
            }

        }

    }

}
