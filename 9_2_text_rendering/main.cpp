#include <QGuiApplication>
#include <QQuickView>
#include <QOpenGLContext>

int main(int argc, char **argv)
{
    QGuiApplication app(argc, argv);

    QSurfaceFormat format;
    format.setRenderableType(QSurfaceFormat::OpenGL);
    format.setVersion(3, 3);
    format.setProfile(QSurfaceFormat::CoreProfile);
    format.setDepthBufferSize(24);
    format.setStencilBufferSize(8);

    QQuickView view;
    view.setFormat(format);
    view.resize(640, 480);
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.setTitle("Draw Text");
    view.setSource(QUrl("qrc:/main.qml"));
    view.show();

    return app.exec();
}
