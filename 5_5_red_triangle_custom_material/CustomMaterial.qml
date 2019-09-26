import Qt3D.Render 2.12

Material {
    id: root

    property color color: Qt.rgba(0.0, 1.0, 0.0, 1.0)

    parameters: [
        Parameter { name: "color"; value: root.color }
    ]
}
