#include <QGuiApplication>
#include<QQmlContext>
#include <QQmlApplicationEngine>
#include "person.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    QList<QObject *> personList;
    personList.append(new Person("Dhruvi","Black",23,&engine));
    personList.append(new Person("Nidhi","Red",23,&engine));
    personList.append(new Person("Margi","Blue",23,&engine));

    engine.rootContext()->setContextProperty("personModel",QVariant::fromValue(personList));

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
