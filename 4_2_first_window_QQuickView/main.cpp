#include <QGuiApplication>
#include <QQuickView>

int main(int argc, char* argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQuickView view;

    view.setTitle("QQuickView");
    view.setSource(QUrl("qrc:/main.qml"));
    view.show();

    return app.exec();
}
