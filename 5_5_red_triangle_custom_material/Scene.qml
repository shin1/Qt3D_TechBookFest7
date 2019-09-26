import Qt3D.Core 2.12
import Qt3D.Render 2.12

Entity {
    RenderSettings {
        activeFrameGraph: RenderSurfaceSelector {
            ClearBuffers {
                clearColor: Qt.rgba(0.0, 0.0, 0.4, 1.0)
                buffers: ClearBuffers.ColorDepthBuffer
            }
        }
    }

    Triangle {
        id: triangle
    }

    CustomMaterial {
        id: material
        effect: CustomEffect {}
    }

    components: [ triangle, material ]
}
