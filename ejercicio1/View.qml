/*
  ------------------------------------------------
  View.qml
  Semana 6 - Desarrollo Multiplataforma QT

  Creado por Fernando Pastor en 11/2024
  ------------------------------------------------
*/

import QtQuick
import QtQuick.Layouts 2.15

Rectangle {
    id: rectangle1
    color: "#efefef"
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    property string title: "Title"

    Heading {
        id: heading1
        headingText: title
    }
}
