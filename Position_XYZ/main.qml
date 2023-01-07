import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //code 1
    /*
    Rectangle {
        id: myShape
        width: 100
        height: 100
        color: "orange"

        function update(){
            console.log(x + " x " + y)
            label.text = Math.round(x) + " x " + Math.round(y)
        }

        x: 100
        y: 100
//        anchors.centerIn: parent

//        Component.onCompleted: update()

        onXChanged: update()
        onYChanged: update()

        Text {
            id: label
            text: qsTr("text")
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            drag.target: parent
        }

    }*/

    // code 2
//    property var midX: width / 2
//    property var midY: height / 2

//    MyShape{
//        color: "red"
//        x: midX - (width / 2)
//        y: midY - (height / 2) - 30
//    }
//    MyShape{
//        color: "green"
//        x: midX - (width / 2) - 55
//        y: midY - (height / 2) + 30
//    }
//    MyShape{
//        color: "blue"
//        x: midX - (width / 2) + 55
//        y: midY - (height / 2) + 30
//    }

    // code 3
//    Column{
//        anchors.centerIn: parent
//        spacing: 2
//        MyShape { color: "red"}
//        MyShape { color: "yellow"}
//        MyShape { color: "green"}
//    }

    // code 4
    Row {
        anchors.centerIn: parent
        spacing: 2
        MyShape {color: "red"}
        MyShape { color: "green"}
        MyShape { color: "blue"}
    }


}
