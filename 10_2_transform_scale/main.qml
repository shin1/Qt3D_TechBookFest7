import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Scene3D 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Scale")

    Scene3D {
        anchors.fill: parent
        focus: true
        aspects: ["input", "logic"]
        Scene {
            id: scene
        }
    }

    Slider {
        from: 1.0
        to: 3.0
        onMoved: {
            scene.scale = value
        }
    }
}
