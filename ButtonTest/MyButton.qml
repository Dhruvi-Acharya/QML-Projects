import QtQuick 2.15

Item {

    id: root
    height: 100
    width: 100
    property color color: "#C0C0C0"
    property color colorClicked: "green"
    property string title: "Click Me"

    Rectangle{
        anchors.fill: parent
        id: myRect
        color: root.color

        Text {
            id: display
            text: root.title
            anchors.centerIn: parent
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onPressed: parent.color = root.colorClicked
            onReleased: parent.color = root.color
        }
    }

}
