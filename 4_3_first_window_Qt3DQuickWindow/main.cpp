#include <Qt3DQuickExtras/qt3dquickwindow.h>
#include <Qt3DQuick/QQmlAspectEngine>
#include <QGuiApplication>
#include <QQmlEngine>
#include <QQmlContext>

int main(int argc, char* argv[])
{
    QGuiApplication app(argc, argv);
    Qt3DExtras::Quick::Qt3DQuickWindow view;
    view.engine()->qmlEngine()->rootContext()->setContextProperty("_window", &view);
    view.setTitle("Qt3DQuickWindow");
    view.setSource(QUrl("qrc:/Scene.qml"));
    view.resize(640, 480);
    view.show();

    return app.exec();
}
