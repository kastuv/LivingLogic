#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "gptserver.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    GptServer gptServer;

<<<<<<< HEAD
=======

>>>>>>> d822a80 (done1)
    QQmlApplicationEngine engine;
    qmlRegisterType<GptServer>("com.example", 1, 0, "GptServer");
    engine.rootContext()->setContextProperty("gptServer", &gptServer);

<<<<<<< HEAD
    const QUrl url(u"qrc:/livlog/main.qml"_qs);
=======
    const QUrl url(u"qrc:/LivingLogic/main.qml"_qs);
>>>>>>> d822a80 (done1)
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
