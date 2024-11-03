import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: customButton
    width: 130
    height: 50
    radius: 8
    color: isHovered ? "#333333" : "#efefef"
    border.width: 0
    property string optionText: "Text"
    property bool isHovered: false
    property var onClickedAction
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

    Text {
        id: buttonText
        color: isHovered ? "#FFFFFF" : "#000000"
        text: optionText
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        horizontalAlignment: Text.AlignLeft
        anchors.leftMargin: 20
    }

    MouseArea {
        id: hoverArea
        anchors.fill: parent
        hoverEnabled: true
        onEntered: isHovered = true
        onExited: isHovered = false
        onClicked: {
            if (typeof onClickedAction === "function") {
                onClickedAction()
            } else {
                console.log("Button" + optionText + " clicked")
            }
        }
    }
}
