import QtQuick 2.12
import QtQuick.Scene3D 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Draw Text")

    Scene3D {
        anchors.fill: parent
        aspects: ["input", "logic"]
        Scene {}
    }
}
