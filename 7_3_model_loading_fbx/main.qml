import QtQuick 2.1
import QtQuick.Window 2.1
import QtQuick.Scene3D 2.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Load FBX Model")

    Scene3D {
        anchors.fill: parent
        focus: true
        aspects: ["input", "logic"]
        Scene {}
    }
}
