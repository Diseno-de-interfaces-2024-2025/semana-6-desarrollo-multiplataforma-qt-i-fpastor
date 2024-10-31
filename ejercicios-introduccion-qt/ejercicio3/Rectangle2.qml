import QtQuick

Rectangle {
        id: rect2
        border.width: 0
        color: "#efefef"
        height: 440
        radius: 8
        width: 400
        Text {
            id: _text
            x: parent.width/2 - width/2
            y: parent.height/2 - height/2
            text: qsTr("Pantalla 2")
        }
    }
