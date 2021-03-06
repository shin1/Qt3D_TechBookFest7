import Qt3D.Render 2.12

GeometryRenderer {
    Buffer {
        id: vertexBuffer
        type: Buffer.VertexBuffer
        data: new Float32Array([
                                   // x, y, z
                                  -1.0, -1.0, 0.0,
                                   1.0, -1.0, 0.0,
                                   0.0,  1.0, 0.0,
                               ])
    }

    Buffer {
        id: vertexColorBuffer
        type: Buffer.VertexBuffer
        data: new Float32Array([
                                   // r, g, b
                                   1.0, 0.0, 0.0,
                                   1.0, 0.0, 0.0,
                                   1.0, 0.0, 0.0,
                               ])
    }

    geometry: Geometry{
        Attribute{
            name: defaultPositionAttributeName
            attributeType: Attribute.VertexAttribute
            vertexBaseType: Attribute.Float
            vertexSize: 3       // x, y, z
            byteOffset: 0       // first of the unit
            byteStride: 3 * 4   // (x, y, z) * size(float)
            count: 3 * 3
            buffer: vertexBuffer
        }
        Attribute {
            name: defaultColorAttributeName
            attributeType: Attribute.VertexAttribute
            vertexBaseType: Attribute.Float
            vertexSize: 3       // r, g, b
            byteOffset: 0       // first of the unit
            byteStride: 3 * 4   // (r, g, b) * size(float)
            count: 3 * 3
            buffer: vertexColorBuffer
        }
    }
}
