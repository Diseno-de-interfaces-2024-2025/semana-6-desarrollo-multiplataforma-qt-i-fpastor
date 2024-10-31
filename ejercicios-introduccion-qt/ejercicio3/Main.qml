import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Rectangle {
        id: rectRed
        x: 0
        y: 0
        width: 200
        height: 100
        color: "#f27b7b"
        MouseArea {
            anchors.fill: parent
            onClicked: loader.source = "Rectangle1.qml"
        }
    }

    Rectangle {
        id: rectGreen
        x: 0
        y: 100
        width: 200
        height: 100
        color: "#80f27b"
        MouseArea {
            anchors.fill: parent
            onClicked: loader.source = "Rectangle2.qml"
        }
    }

    Rectangle {
        id: rectBlue
        x: 0
        y: 200
        width: 200
        height: 100
        color: "#7bb7f2"
        MouseArea {
            anchors.fill: parent
            onClicked: loader.source = "Rectangle3.qml"
        }
    }

    Rectangle {
        id: rectYellow
        x: 0
        y: 300
        width: 200
        height: 100
        color: "#f2de7b"
        MouseArea {
            anchors.fill: parent
            onClicked: loader.source = "Rectangle4.qml"
        }
    }

    Loader {
        id: loader
        x: 220
        y: 20
        width: 400
        height: 440
        source: "Rectangle1.qml"
    }

}
