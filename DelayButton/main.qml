import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 6.0

Window {
    id: window
    width: 640
    height: 480
    visible: true
    property alias row: row
    title: qsTr("Hello World")

    Row {
        id: row
        width: 281
        height: 63
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter

        DelayButton {
            id: delayButton
            text: qsTr("Delay Button")

            Connections {
                target: delayButton
                onProgressChanged: {
                    label.text = Math.round(progress * 10)
                    console.log("clicked")
                }
            }
        }

        Label {
            id: label
            text: qsTr("Status")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pointSize: 14
        }
    }
}
