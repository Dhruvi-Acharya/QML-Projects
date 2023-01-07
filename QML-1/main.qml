import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: element
        text: qsTr("Hello")
    }

    Image {
        id: img
        source: "http://s3-eu-west-1.amazonaws.com/qt-files/logos/Qt-logo-large.png"
//        anchors.centerIn: parent
        height: 150
        width: 150
        x: 100
        y: 10
        z: 3

    }

    Rectangle {
        color: "red"
        width: 200
        height: 200
        x: 50
        y: 50
        z: 2
        opacity: 0.5
    }

    Rectangle {
        color: "blue"
        width: 200
        height: 200
        x: 150
        y: 150
        z: 5
        opacity: 0.5
    }

    TextInput {
        id: myInput
        text: "Hello World"
        anchors.centerIn: parent
    }

    Text {
        id: myText
        text: myInput.text
        font.pixelSize: 25
    }
}
