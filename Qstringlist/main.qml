import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListView{
        id: myList
        anchors.fill: parent

        model: listdata
        delegate: Rectangle {
            height: 50
            width: parent.width
            border.color: "red"
            radius: 20

            Text {
                id: mtext
                text: modelData
                anchors.centerIn: parent
                font.pointSize: 20
            }
        }
    }
}
