import QtQuick
import QtQuick.Layouts 1.15

Text {
    property string headingText: "Heading"

    id: heading
    text: qsTr(headingText)
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.leftMargin: 0
    anchors.rightMargin: 0
    font.pixelSize: 24
    horizontalAlignment: Text.AlignHCenter
    padding: 20
    Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
}
