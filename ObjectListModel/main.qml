import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Object List Model Demo")

    ListView {
        id: myListView
        anchors.fill: parent
        model: model
//        model: personModel

        delegate: Rectangle {
            height: 90
            radius: 20
            color: "gray"
            border.color: "cyan"
            width: parent.width

            RowLayout {
                anchors.fill: parent
                anchors.margins: 20

                TextField {
                    text: names // modelData.age
                    Layout.fillWidth: true
                }

                SpinBox {
                    editable: true
                    value: age
                    Layout.fillWidth: true
                }

                Rectangle {
                    width: 50
                    height: 50
                    color: favoriteColor
                }
            }
        }
    }

    ListModel {
        id: model
        ListElement {
            names: "Dhruvi";
            favoriteColor: "Blue";
            age: 23
        }
        ListElement {
            names: "Dhruvi";
            favoriteColor: "Blue";
            age: 23
        }
        ListElement {
            names: "Dhruvi";
            favoriteColor: "Blue";
            age: 23
        }
    }

}
