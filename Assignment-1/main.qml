import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: myImage
        source: "http://s3-eu-west-1.amazonaws.com/qt-files/logos/Qt-logo-large.png"
        anchors.centerIn: parent
        width: 200
        height: 200

        Rectangle {
            anchors.fill: parent
            opacity: 0.5
            color:  "orange"
            visible: false
            id: overlay
        }

        MouseArea {
            hoverEnabled: true
            anchors.fill: parent

            onEntered: {
                overlay.visible = true
            }

            onExited: {
                overlay.visible = false
            }

            onClicked: {
                Qt.openUrlExternally("http://www.qt.io")
            }

        }
    }
}
