import Qt3D.Core 2.12
import Qt3D.Render 2.12
import Qt3D.Input 2.12
import Qt3D.Extras 2.12

Entity {
    id: sceneRoot

    Camera {
        id: camera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 45
        aspectRatio: 16/9
        nearPlane : 0.1
        farPlane : 1000.0
        position: Qt.vector3d( 0.0, 0.0, 20.0 )
        upVector: Qt.vector3d( 0.0, 1.0, 0.0 )
        viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )
    }

    OrbitCameraController {
        camera: camera
    }

    components: [
        RenderSettings {
            activeFrameGraph : ForwardRenderer {
                clearColor: Qt.rgba(0.0, 0.0, 0.4, 1.0)
                camera: camera
            }
        },
        InputSettings {
        }
    ]

    Entity {
        components: [
            Transform {
                translation: Qt.vector3d(-5, -5, 0)
            }
        ]

        Text2DEntity {
            id: text
            font.pointSize: 1
            font.family: "Meiryo"
            text: "ABCDEあいうえお"
            color:"red"
            width: 20
            height: 10
        }
    }
}
