import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Scene3D 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Rotation")

    Scene3D {
        anchors.fill: parent
        Scene {
            id: scene
        }
    }

    Column {
        Slider {
            from: 0
            to: 360
            onMoved: {
                scene.rotationX = value
            }
        }
        Slider {
            from: 0
            to: 360
            onMoved: {
                scene.rotationY = value
            }
        }
        Slider {
            from: 0
            to: 360
            onMoved: {
                scene.rotationZ = value
            }
        }
    }
}
