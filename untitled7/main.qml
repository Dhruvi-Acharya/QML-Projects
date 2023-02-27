import QtQuick 2.15
import QtQuick.Window 2.15
import QtMultimedia 5.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("RTSP Live Stream")

//    Video {
//        id: cam1Stream
//        x: 49
//        y: 91
//        width: 505
//        height: 336
//        source: "rtsp://admin:Admin%40123@172.25.15.201/live1s1.sdp"
//        autoPlay: true
//        opacity: 1.0
//        fillMode: Image.Stretch
//        muted: false
//    }

    MediaPlayer {
        id: videoPlayer
        source: "rtsp://admin:Admin%40123@172.25.15.201/live1s1.sdp"
        muted: true
        autoPlay: true
    }

    VideoOutput {
        id: camera1                         
        width: 100
        height: 100
        anchors.horizontalCenter: parent.horizontalCenter
        source: videoPlayer
    }
}
