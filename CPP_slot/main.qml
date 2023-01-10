import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Label {
        id: label
        x: 291
        y: 112
        text: qsTr("CPP Slot")
    }

    Button {
        id: button
        x: 280
        y: 177
        text: qsTr("Click")

        onClicked: {
            testing.bark();
        }
    }
}
