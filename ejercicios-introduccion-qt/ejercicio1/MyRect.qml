import QtQuick
import QtQuick.Controls
import QtQuick.Timeline 1.0

Rectangle {
    id: rectangle
    width: 320
    height: 240
    color: "#d3f6b1"
    radius: 12
    border.color: "#86d360"
    border.width: 2
    states: [
        State {
            name: "active"
            when: rectangle.activated == true

            PropertyChanges {
                target: rectangle
                color: "#b1f6f6"
                border.color: "#60a0d3"
                border.width: 2
            }
        },

        State {
            name: "idle"
            PropertyChanges {
                target: rectangle
                color: "#b1f6f6"
                border.color: "#60a0d3"
                border.width: 2
            }
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: rectangle
                        property: "border.color"
                        duration: 2000
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: rectangle
                        property: "border.width"
                        duration: 2000
                    }
                }

                SequentialAnimation {
                    PauseAnimation {
                        duration: 0
                    }

                    PropertyAnimation {
                        target: rectangle
                        property: "color"
                        duration: 2000
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]
    property bool activated: false

}

/*##^##
Designer {
    D{i:0}D{i:5;transitionDuration:2000}
}
##^##*/
