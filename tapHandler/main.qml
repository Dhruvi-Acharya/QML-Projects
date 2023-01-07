import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
//        anchors.centerIn: parent
        width: 100
        height: 100
        x:300
        color: inputHandler.pressed ? "red" : "blue"

        TapHandler{
            id: inputHandler
        }
    }

    Rectangle {
//        anchors.centerIn: parent
        width: 100
        height: 100
        color: inputHandler2.pressed ? "RED" : "blue" // no any particular case for color name

        TapHandler{
            id: inputHandler2
        }
    }

    Item {
        x: 100
        id: myItem
        width: 100
        height: 100

        Rectangle {
            color: "red"
            anchors.fill: parent
        }
    }

    Rectangle {
        id: myRect
        anchors.centerIn: parent
        color: "red"
        width: 200
        height: 200
        visible: true

        border.color: "black"
        border.width: 5
//        radius: 50
        radius: width

        gradient: Gradient{
            GradientStop {position: 0.3; color: "red"}
            GradientStop {position: 1.0; color: "blue"}
        }
    }
}
