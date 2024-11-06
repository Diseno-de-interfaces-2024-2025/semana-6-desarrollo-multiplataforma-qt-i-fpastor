/*
  ------------------------------------------------
  CardGrid.qml
  Semana 6 - Desarrollo Multiplataforma QT

  Creado por Fernando Pastor en 11/2024
  ------------------------------------------------
*/

import QtQuick
import QtQuick.Layouts 2.15

GridLayout {
    id: gridLayout
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: heading1.bottom
    anchors.bottom: parent.bottom
    anchors.leftMargin: 20
    anchors.rightMargin: 20
    anchors.topMargin: 0
    anchors.bottomMargin: 20
    Layout.fillHeight: true
    Layout.fillWidth: true
    columns: 3
    rowSpacing: 10
    columnSpacing: 10
}
