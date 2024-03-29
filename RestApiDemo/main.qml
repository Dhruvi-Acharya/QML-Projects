import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.4

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rest Client V1")

    ColumnLayout{
        anchors.fill: parent
        spacing: 0

        ListView{
            id : mListView
            model : myModel
            delegate: Rectangle{

                width : parent.width
                height: textId.implicitHeight+30
                color: "beige"
                border.color: "yellowgreen"
                radius: 5

                Text {
                    width : parent.width
                    height: parent.height
                    id : textId
                    anchors.centerIn: parent
                    text : modelData
                    font.pointSize: 13
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
            }
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        SpinBox{
            id : spinBoxId
            Layout.fillWidth: true
            value: 10

        }

        Button {
            id : mButton1
            text : "Fetch"
            Layout.fillWidth: true
            onClicked: {
                console.log("fetch post")
                Wrapper.fetchPosts(spinBoxId.value)
            }

        }
        Button {
            id : mButton2
            text : "RemoveLast"
            Layout.fillWidth: true
            onClicked: {
                Wrapper.removeLast()

            }

        }
    }


}
