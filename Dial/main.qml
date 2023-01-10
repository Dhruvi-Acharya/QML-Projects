import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.13

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id: column
        width: 200
        height: 208
        anchors.verticalCenter: parent.verticalCenter
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Label")
            font.bold: true
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Dial {
            id: dial
            anchors.horizontalCenter: parent.horizontalCenter

            Connections {
                target: dial
                onMoved: label.text = Math.round(dial.value * 100)
            }
        }
    }
}
