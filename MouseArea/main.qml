import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: myArea
        width: 200
        height: 200
        anchors.centerIn: parent
        color: "blue"

        MouseArea {
            id: myMouse
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            hoverEnabled: true

            onClicked: {
                console.log("Clicked: "+mouse.button)
                if(mouse.button === Qt.LeftButton) parent.color = "green"
                if(mouse.button === Qt.RightButton) parent.color = "red"
            }

            onDoubleClicked: {
                parent.color = "purple"
                console.log("Double clicked: "+mouse.button)
            }

            onPositionChanged: console.log("Position X: "+mouseX + " Y: "+mouseY)

            onEntered: {
                console.log("Entered")
                parent.color = "orange"
            }
            onExited: {
                console.log("Exited")
                parent.color = "pink"
            }
        }
    }
}
