import Qt3D.Render 2.12

GeometryRenderer {
    Buffer {
        id: vertexBuffer
        type: Buffer.VertexBuffer
        data: new Float32Array([
                              //   x,    y,   z,   R,   G,   B
                                -1.0, -1.0, 0.0, 1.0, 0.0, 0.0,
                                 1.0, -1.0, 0.0, 1.0, 0.0, 0.0,
                                 0.0,  1.0, 0.0, 1.0, 0.0, 0.0,
                               ])
    }

    geometry: Geometry{
        Attribute{
            name: defaultPositionAttributeName
            attributeType: Attribute.VertexAttribute
            vertexBaseType: Attribute.Float
            vertexSize: 3       // x, y, z
            byteOffset: 0       // first of the unit
            byteStride: 6 * 4   // (x, y, z, r, g, b) * size(float)
            count: 6 * 3
            buffer: vertexBuffer
        }
        Attribute {
            name: defaultColorAttributeName
            attributeType: Attribute.VertexAttribute
            vertexBaseType: Attribute.Float
            vertexSize: 3       // r, g, b
            byteOffset: 3 * 4   // after vertex data
            byteStride: 6 * 4   // (x, y, z, r, g, b) * size(float)
            count: 6 * 3
            buffer: vertexBuffer
        }
    }
}
