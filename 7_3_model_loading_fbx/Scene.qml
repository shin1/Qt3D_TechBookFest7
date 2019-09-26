import Qt3D.Core 2.0
import Qt3D.Extras 2.0
import Qt3D.Input 2.0
import Qt3D.Render 2.0

Entity {
    id: root

    Camera {
        id: camera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 45
        aspectRatio: root.width / root.height
        nearPlane : 0.1
        farPlane : 1000.0
        position: Qt.vector3d( 200.0, 200.0, 200.0 )
        upVector: Qt.vector3d( 0.0, 1.0, 0.0 )
        viewCenter: Qt.vector3d( 0.0, 100.0, 0.0 )
    }

    components: [
        RenderSettings {
            activeFrameGraph: ForwardRenderer {
                clearColor: Qt.rgba(1.0, 1.0, 1.0, 1.0)
                camera: camera
            }
        },
        InputSettings {}
    ]

    OrbitCameraController {
        camera: camera
        lookSpeed: 200
    }

    Entity {
        id: entity

        DirectionalLight {
            id: light
            color: "white"
            intensity: 1.0
        }

        SceneLoader {
            id: model
            source:"qrc:/Samba Dancing.fbx"
        }

        components: [  light, model ]
    }
}
