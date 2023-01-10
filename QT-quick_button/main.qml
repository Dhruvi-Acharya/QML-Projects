import QtQuick 2.15
import QtQuick.Window 2.15
 import QtQuick.Controls 2.3

Window {
    width: 640
    height: 480
    visible: true
    color: "#7b7777"
    title: qsTr("Hello World")

    Row {
        id: row
        width: 200
        height: 400
    }
}
