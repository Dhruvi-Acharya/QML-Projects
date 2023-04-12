import QtQuick 2.9
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import Qt.labs.folderlistmodel 1.0
import QtQuick.Controls 1.1
import QtQml.Models 2.1
import QtQuick.Window 2.15

Window {
    visible: true
    width: 400
    height: 400
    title: qsTr("Camera Display")

    GridLayout
    {
        width: 303
        height: 303
        anchors.centerIn: parent
        columns: 3
        rowSpacing: 1
        columnSpacing: 1
        Repeater {
            model: 9
            delegate: Item {
                id: container
                width: 100
                height: 100
                z: img.state == "preview" ? 1 : 2
                Image {
                    id: img
                    cache: false
                    width: parent.width
                    height: parent.height
                    anchors.centerIn: parent
                    source: "images/blank.png"
                    fillMode: Image.PreserveAspectFit
                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            img.state = img.state == "preview" ? "full" : "preview";
                        }
                    }
                    state: "preview"
                    states: [
                        State {
                            name: "preview"
                            PropertyChanges { target: img; width: 100; height: 100; }
                        },
                        State {
                            name: "full"
                            PropertyChanges { target: img; width: 300; height: 300; }
                        }
                    ]
                    transitions: Transition {
                        PropertyAnimation { properties: "width,height"; duration: 1000; easing.type: Easing.OutBack }
                    }
                }
            }
        }
    }
}
