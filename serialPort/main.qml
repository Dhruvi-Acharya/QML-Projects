import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3
import org.mydata 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyData {
        id: mydata
    }

    Column {
        spacing: 10
        id: gridLayout
        anchors.centerIn: parent

        Label {
            id: label
            text: qsTr("Port")
        }

        TextField {
            id: txtEdit
            objectName: "combo"

        }

        Label {
            id: label1
            text: qsTr("Speed")
        }

        ComboBox {
            id: comboBox1
            currentIndex: 2
            objectName: "speed"
            model: ["9600","1500","3200"]
        }

        Button {
            id: button
            text: qsTr("Ok")
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                console.log(txtEdit.text)
                console.log(comboBox1.currentText)

                mydata.search(txtEdit.text,comboBox1.currentText)
            }
        }
    }
}
