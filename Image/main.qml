import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //java Script
//    property var middle: height / 2

//    Image {
//        id: localImage
//        source: "images/image"

//        width: 300
//        fillMode: Image.PreserveAspectFit

//        x: 300
//        y: middle - 100
//    }

//    Image {
//        id: remoteImage
//        source: "http://s3-eu-west-1.amazonaws.com/qt-files/logos/Qt-logo-large.png"

//        width: 100
//        fillMode: Image.PreserveAspectFit

//        x: 100
//        y:  middle

//        onProgressChanged: console.log(remoteImage.progress)
//        onStatusChanged: if(remoteImage.status == Image.Ready) console.log("Remote image was loaded")
//    }

    Text {
        id: myText
        text: qsTr("<html><b>Hello</b> <i><font color='green'>World</font></i></html><br><font color='#cococo'>this is a test</font><br>
<a href='http://www.google.com'>My link</a>")
        anchors.centerIn: parent
        font.pointSize: 35
//        font.bold: true // this may not work
        font.italic: true
        color: "red"
        linkColor: "blue"

        onLinkHovered: {
            console.log("Hover: " + link)
            if(link){
                myText.font.bold = true
            }else {
                myText.focus.bold = false
            }
        }

        onLinkActivated: Qt.openUrlExternally(link)
    }


}
