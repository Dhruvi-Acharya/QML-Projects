#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSerialPort>
#include <QSerialPortInfo>
#include <QDebug>
#include <QQmlContext>
#include<QQuickView>
#include <QCoreApplication>
#include <QQmlEngine>
#include <QQmlComponent>
#include <QDateTime>

class MyData : public QObject {
    Q_OBJECT

public:
    explicit MyData (QObject* parent = 0) : QObject(parent) { }

    Q_INVOKABLE void search(QString port, QString speed) {

        qInfo() << "Port: " << port;
        qInfo() << "Speed: " << speed;

    }
};

#include "main.moc"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    qmlRegisterType<MyData>("org.mydata", 1, 0, "MyData");

    //    QQmlApplicationEngine engine;
    //    const QUrl url(QStringLiteral("qrc:/main.qml"));
    //    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
    //                     &app, [url](QObject *obj, const QUrl &objUrl) {
    //        if (!obj && url == objUrl)
    //            QCoreApplication::exit(-1);
    //    }, Qt::QueuedConnection);

    QQmlEngine engine;
    QQmlComponent component(&engine,"qrc:/main.qml");
    QObject *rootObject = component.create();

    qDebug() << "Object name is: " << rootObject->objectName();

    qDebug() << "Children count: " << rootObject->children().count();

    // read child1
    QObject *child1 = rootObject->findChild<QObject *>("combo");

    if(child1){
        qDebug() << "Child found";

        //            QList<QString> lst = {"one","two","three"};
        //            child1->setProperty("width",QVariant::fromValue(300));

        qDebug() << child1->property("text");
        QString port = child1->property("text").toString();
        qInfo() << "Given port: " << port;

        //            child1->setProperty("model",QVariant::fromValue(lst));
        //            qDebug() << "Age is: " << QQmlProperty::read(child1,"age").toInt();
        //            qDebug() << "Age is: " << child1->property("age").toInt();
        //            qDebug() << "Names: " << child1->property("names").toString();
    }else {
        qDebug() << "Couldn't get the child1";
    }

    QObject *child2 = rootObject->findChild<QObject *>("speed");

    if(child2){
        qInfo() << "Speed found";
        qInfo() << child2->property("model").toString();
    }

    qDebug() << "Number of serial ports:" << QSerialPortInfo::availablePorts().count();

    foreach (const QSerialPortInfo &info, QSerialPortInfo::availablePorts()) {
        qDebug() << "Port Name: " << info.portName();
        qDebug() << "Description: " << info.description();
        qDebug() << "Serial number: " << info.serialNumber();

        QSerialPort serial;
        serial.setPort(info);
        if(!serial.open(QIODevice::ReadWrite)){
            qDebug() << "Serial port not open";
        }

    }


    // Connect signals/slots
    //     connect(&serial, SIGNAL(readyRead()), this, SLOT(readData()));




    //    if (serial.open(QIODevice::ReadWrite))
    //        serial.close();

    return app.exec();
}
