#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "gptserver.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    GptServer gptServer;
    qmlRegisterType<GptServer>("com.example", 1, 0, "GptServer");

    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("gptServer", &gptServer);

    const QUrl url(u"qrc:/LivingLogic/main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
