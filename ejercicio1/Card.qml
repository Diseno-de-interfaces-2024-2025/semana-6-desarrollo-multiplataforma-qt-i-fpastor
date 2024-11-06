/*
  ------------------------------------------------
  Card.qml
  Semana 6 - Desarrollo Multiplataforma QT

  Creado por Fernando Pastor en 11/2024
  ------------------------------------------------
*/

import QtQuick 2.15
import QtQuick.Layouts 1.15

Rectangle {
    width: 320
    height: 240
    color: "#00ffffff"
    property string cardTitle: "Card Title"

    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.preferredWidth: 150
    Layout.preferredHeight: 100
    Layout.minimumWidth: 100
    Layout.minimumHeight: 50
    Layout.maximumWidth: 350
    Layout.maximumHeight: 250

    Column {
        id: column
        anchors.fill: parent

        Text {
            id: cardText
            text: cardTitle
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            topPadding: 0
            padding: 10
        }

        Rectangle {
            id: cardRectangle
            color: "#cccccc"
            radius: 16
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: cardText.bottom
            anchors.bottom: parent.bottom
            anchors.topMargin: 0
        }
    }
}
