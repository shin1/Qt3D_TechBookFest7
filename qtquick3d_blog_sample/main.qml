import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick3D 1.0

Window {
    id: window
    visible: true
    width: 1280
    height: 720

    View3D {
        id: view
        anchors.fill: parent

        Node {
            id: scene

            Light {
                id: directionalLight
            }

            Camera {
                id: camera
                z: -600
            }

            Model {
                id: cubeModel
                source: "#Cube"

                materials: [
                    DefaultMaterial {
                        id: cubeMaterial
                        diffuseColor: "red"
                    }
                ]
            }
        }
    }
}
