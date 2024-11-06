/*
  ------------------------------------------------
  Main.qml
  Semana 6 - Desarrollo Multiplataforma QT

  Creado por Fernando Pastor en 11/2024
  ------------------------------------------------
*/

import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

Window {
    id: window
    width: 640
    height: 480
    visible: true

    ColumnLayout {
        id: optionMenu
        x: 0
        width: 150
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        spacing: 10

        MenuButton {
            id: menuButton1
            optionText: "Elementos"
            onClickedAction: function() {
                stackLayout.currentIndex = 0
            }
        }

        MenuButton {
            id: menuButton2
            optionText: "Edición"
            onClickedAction: function() {
                stackLayout.currentIndex = 1
            }
        }

        MenuButton {
            id: menuButton3
            optionText: "Usuarios"
            onClickedAction: function() {
                stackLayout.currentIndex = 2
            }
        }

        MenuButton {
            id: menuButton4
            optionText: "Configuración"
            onClickedAction: function() {
                stackLayout.currentIndex = 3
            }
        }
    }

    StackLayout {
        id: stackLayout
        anchors.verticalCenter: optionMenu.verticalCenter
        anchors.left: optionMenu.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        Layout.fillHeight: true
        Layout.fillWidth: true
        currentIndex: 0

        View {
            id: view1
            title: "Elementos"

            CardGrid {
                id: cardGrid
                anchors.top: parent.top
                anchors.topMargin: 80
                Card {
                    id: card1
                }

                Card {
                    id: card2
                }

                Card {
                    id: card3
                }

                Card {
                    id: card4
                }

                Card {
                    id: card5
                }

                Card {
                    id: card6
                }

                Card {
                    id: card7
                }
            }
        }

        View {
            id: view2
            title: "Edición"
        }

        View {
            id: view3
            title: "Usuarios"
        }

        View {
            id: view4
            title: "Configuración"
        }
    }

    RoundButton {
        id: roundButton
        text: "+"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 24
        anchors.bottomMargin: 24
    }

 }
