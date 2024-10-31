import QtQuick
import QtQuick.Controls

TextField {
    id: textField
    width: 200
    rightPadding: 10
    leftPadding: 10
    bottomPadding: 10
    topPadding: 10
    property string placeHolder: ""
    placeholderText: placeHolder
    background:
        Rectangle {
            id: rectangle
            color: "#ffffff"
            radius: 6
        }
}

