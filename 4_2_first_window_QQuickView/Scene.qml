import Qt3D.Core 2.12
import Qt3D.Render 2.12
import Qt3D.Extras 2.12

Entity {
    RenderSettings {
        activeFrameGraph: ForwardRenderer {
            clearColor: Qt.rgba(0.0, 0.0, 0.4, 1.0)
        }
    }
}
