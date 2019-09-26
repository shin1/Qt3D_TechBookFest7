import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Scene3D 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Position")

    Scene3D {
        anchors.fill: parent
        focus: true
        aspects: ["input", "logic"]
        Scene {
            id: scene
        }
    }

    Column {
        Slider {
            onMoved: {
                scene.position.x = value
            }
        }
        Slider {
            onMoved: {
                scene.position.y = value
            }
        }
        Slider {
            onMoved: {
                scene.position.z = value
            }
        }
    }
}
