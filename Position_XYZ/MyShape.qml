import QtQuick 2.15

Rectangle {
    color: "gray"
    width: 100
    height: 100

    MouseArea{
        anchors.fill: parent
        drag.target: parent
        onClicked: parent.z++
    }
}
