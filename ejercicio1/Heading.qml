/*
  ------------------------------------------------
  Heading.qml
  Semana 6 - Desarrollo Multiplataforma QT

  Creado por Fernando Pastor en 11/2024
  ------------------------------------------------
*/

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
