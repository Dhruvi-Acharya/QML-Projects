import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Connections {
        target: testing

        onNotice: {
            console.log("slot called from c++")
            label1.text = data
        }
    }

    Label {
        id: label
        x: 302
        y: 96
        text: qsTr("Label")
    }

    Label {
        id: label1
        x: 302
        y: 159
        text: qsTr("Status")
        font.pointSize: 18
        font.bold: true
    }

    Button {
        id: button
        x: 198
        y: 221
        text: qsTr("Start")
        onClicked: {
            testing.start();
        }
    }

    Button {
        id: button1
        x: 393
        y: 221
        text: qsTr("Stop")

        onClicked: {
            testing.stop();
        }
    }
}
