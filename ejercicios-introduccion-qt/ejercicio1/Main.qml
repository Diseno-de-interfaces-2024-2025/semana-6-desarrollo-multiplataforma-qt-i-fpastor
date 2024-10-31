import QtQuick
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyRect {
        id: myRect
        x: 10
        y: 142
        width: 620
        height: 50
        activated: _switch.checked
    }

    Switch {
        id: _switch
        x: 62
        y: 210
        text: qsTr("Switch")
        anchors.left: parent.left
        anchors.leftMargin: 10
        font.pointSize: 12
        checked: myRect.activated
    }
}
