import Qt3D.Core 2.12
import Qt3D.Extras 2.12
import Qt3D.Input 2.12
import Qt3D.Render 2.12

Entity {
    id: root

    Camera {
        id: camera
        projectionType: CameraLens.PerspectiveProjection
        fieldOfView: 45
        aspectRatio: root.width / root.height
        nearPlane : 0.1
        farPlane : 1000.0
        position: Qt.vector3d( 4.0, 3.0, 3.0 )
        upVector: Qt.vector3d( 0.0, 1.0, 0.0 )
        viewCenter: Qt.vector3d( 0.0, 0.0, 0.0 )
    }

    components: [
        RenderSettings {
            activeFrameGraph: ForwardRenderer {
                clearColor: Qt.rgba(0.0, 0.0, 0.4, 1.0)
                camera: camera
            }
        },
        InputSettings {}
    ]

    OrbitCameraController {
        camera: camera
    }

    Entity {
        id: entity

        Mesh {
            id: mesh
            source: "qrc:/suzanne.obj"
        }

        PhongMaterial {
            id: material
            ambient: "green"
            diffuse: "green"
        }

        components: [ mesh, material ]
    }
}
