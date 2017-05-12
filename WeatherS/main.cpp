#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtPlugin>
#include <QQmlEngine>
#include <QQmlExtensionPlugin>


int main(int argc, char *argv[])
{
    //Запуск приложения
    QStringList paths = QCoreApplication::libraryPaths();
        paths.append("qml");
        QCoreApplication::setLibraryPaths(paths);
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    app.setOrganizationName("Koshachelo");
    app.setOrganizationDomain("example.com");
    app.setApplicationName("WeatherS");
    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
