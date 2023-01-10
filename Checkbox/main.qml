import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    color: "#ffffff"
    title: qsTr("Hello World")

    Rectangle {
        width: 100
        height: 100
        anchors.centerIn: parent
        color: "red"
        border.color: "#ffffff"
    }
}
