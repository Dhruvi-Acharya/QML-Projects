import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 6.2
import com.company.process 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Process {
        id: proc

        onReadyRead: {
            console.log("ready read");
            txtOutput.text = proc.readAll();
            console.log(proc.readAll());
        }
    }

    Column {
        id: column

        height: 400
        spacing: 25
        anchors.centerIn: parent

        Grid {
            spacing: 25
            id: grid
            rows: 3

            Label {
                text: qsTr("Command")
            }

            TextField {
                id: txtCommand
                placeholderText: qsTr("Text Field")
            }

            Label {
                text: qsTr("Args")
            }

            TextField {
                id: txtArgs
                placeholderText: qsTr("Text Field")
            }

            Label {
                text: qsTr("Output")
            }

            TextField {
                id: txtOutput
                placeholderText: qsTr("Text Field")
            }
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            id: btnGo
            text: qsTr("Go")

            onClicked: {
                console.log("button clicked");
                proc.start(txtCommand.text,[txtArgs.text])
            }
        }
    }
}
