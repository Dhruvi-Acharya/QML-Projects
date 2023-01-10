import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Popup {
        id: popup
        anchors.centerIn: parent
        width: 200
        height: 200
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside // | Popup.CloseOnPressOutsideParent

        Column {
            spacing: 25
            anchors.fill: parent

            Label {
                id: lblButter
                text: "Butter: " + checkBox.checked
            }
            Label {
                id: lblBread
                text: "Bread: " + checkBox1.checked
            }
            Label {
                id: lblSouce
                text: "Souce: " + checkBox2.checked
            }

            Button {
                text: "Close"
//                onClicked: popup.visible = false
                onClicked: popup.close()
            }
        }
    }

    Frame {
        id: frame
        width: 142
        height: 184
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            id: column
            anchors.fill: parent
            spacing: 10

            CheckBox {
                id: checkBox
                text: qsTr("Butter")
            }

            CheckBox {
                id: checkBox1
                text: qsTr("Bread")
                icon.color: "#ffffff"
            }

            CheckBox {
                id: checkBox2
                text: qsTr("Souce")
            }

            Button {
                id: button
                text: qsTr("Show")
                anchors.horizontalCenter: parent.horizontalCenter
//                onClicked: popup.visible = true
                onClicked: popup.open()
            }
        }
    }


}
