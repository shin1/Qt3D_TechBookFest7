import Qt3D.Render 2.12

Effect {
    id: root

    techniques: [
        Technique {
            graphicsApiFilter {
                api: GraphicsApiFilter.OpenGL
                profile: GraphicsApiFilter.CoreProfile
                majorVersion: 3
                minorVersion: 3
            }

            renderPasses: [
                RenderPass {
                    shaderProgram: ShaderProgram {
                        vertexShaderCode:   loadSource("qrc:/shaders/SimpleVertexShader.vert")
                        fragmentShaderCode: loadSource("qrc:/shaders/SimpleFragmentShader.frag")
                    }
                }
            ]
        }
    ]
}
