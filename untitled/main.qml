import QtQuick 2.0
import QtQml.Models 2.2
import QtQuick.Controls 2.3

Window {
    id: window
    width: 400
    height: 400
    visible: true

    title: qsTr("Hello World")

    Button {
        id: btn
        text: "Special button"
        anchors.centerIn: parent

        background: Rectangle{
            implicitWidth: 150
            implicitHeight: 40
            color: btn.down ? "#d6d6d6" : "#f6f6f6"
            border.color: "#26282a"
            border.width: 3
            radius: 10


        }

        Keys.onPressed: {
            if(event.key == Qt.Key_D){
                color= "blue";
                event.accepted="true"
            }
        }

        property int animv: 0

        SequentialAnimation on animv {
            loops: Animation.Infinite
            PropertyAnimation{to: 150; duration: 1000}
            PropertyAnimation {to: 0; duration: 1000}
        }
    }

    Text {
        id: txt
        text: btn.animv
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 20
    }

    ListView {
        width: 200
        height: 100
        model: 3


        delegate: Rectangle{
            width: 100
            height: 10

            color: ListView.isCurrentItem ? "red":"yellow"
        }
    }

    ListView {
        width: 240; height: 320
        model: ListModel {
            id: listModel
            Component.onCompleted: {
                for (var i = 0; i < 10; i++)
                    listModel.append({"Name": "Item " + i})
            }
        }
        delegate: Text { text: index}

    }
    Rectangle {
        width: 100
        height: 100
        opacity: 0.5
        gradient: Gradient {
            GradientStop { position: 0.0; color: "yellow" }
            GradientStop {position: 0.5; color: "darkgreen"}
            GradientStop { position: 1.0; color: "green" }
        }
    }

    AbstractButton {
        text: "Button"
        x: 100
        y: 20
        width: 200
        height: 100
        color: "grey"
        display: AbstractButton.TextOnly
    }

}


