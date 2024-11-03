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
        anchors.left: optionMenu.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        Layout.fillHeight: true
        Layout.fillWidth: true
        currentIndex: 0

        Rectangle {
            id: rectangle1
            color: "#efefef"
            anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true

            Heading {
                id: heading1
                headingText: "Elementos"
            }

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

        Rectangle {
            id: rectangle2
            color: "#efefef"
            anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true

            Heading {
                id: heading2
                headingText: "Edición"
            }
        }

        Rectangle {
            id: rectangle3
            color: "#efefef"
            anchors.fill: parent
            Layout.fillWidth: true
            Layout.fillHeight: true
            Heading {
                id: heading3
                headingText: "Usuarios"
            }
        }

        Rectangle {
            id: rectangle4
            color: "#efefef"
            anchors.fill: parent
            Layout.fillWidth: true
            Layout.fillHeight: true

            Heading {
                id: heading4
                headingText: "Configuración"
            }
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
