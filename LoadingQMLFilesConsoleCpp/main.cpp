#include <QCoreApplication>
#include <QQmlEngine>
#include <QQmlComponent>
#include <QDebug>
#include <QQmlProperty>
#include <QColor>
//#include <QGuiApplication>
//#include <QQmlApplicationEngine>


int main(int argc, char *argv[])
{

    QCoreApplication app(argc, argv);

    qDebug() << "Running qml";
    QQmlEngine engine;
    QQmlComponent component(&engine,"qrc:/main.qml");
    QObject *rootObject = component.create();

    qDebug() << "Object name is: " << rootObject->objectName();

    qDebug() << "Children count: " << rootObject->children().count();

    // read child1

    QObject *child1 = rootObject->findChild<QObject *>("Child1");

    if(child1){
        qDebug() << "Age is: " << QQmlProperty::read(child1,"age").toInt();
        qDebug() << "Age is: " << child1->property("age").toInt();
        qDebug() << "Names: " << child1->property("names").toString();
    }else {
        qDebug() << "Couldn't get the child1";
    }

    // manipulate rect
    QObject *childRect = rootObject->findChild<QObject *>("childRect");

    if(childRect){
        qDebug() << "The rect width is: " << childRect->property("width").toInt();
        qDebug() << "The rect height is: " << QQmlProperty::read(childRect,"height").toInt();
        qDebug() << "The rect color is: " << childRect->property("color").toString();

        // modify rect property

        QColor color(Qt::red);

        childRect->setProperty("color",color);
        childRect->setProperty("width",QVariant::fromValue(600));
        QQmlProperty::write(childRect,"height",QVariant::fromValue(600));

        qDebug() << "Modified Rect value";

        qDebug() << "The rect width is: " << childRect->property("width").toInt();
        qDebug() << "The rect height is: " << QQmlProperty::read(childRect,"height").toInt();
        qDebug() << "The rect color is: " << childRect->property("color").toString();

    }

    // find children
    QList<QObject *> children = rootObject->findChildren<QObject *>("Child2");

    if(children.count() > 0) {
        qDebug() << "Children, Printing their cars: ";
        foreach (QObject *object, children) {
            qDebug() << "The car brand is: " << object->property("car").toString();
        }
    }

    // Recursive and direct children
    QList<QObject *> deepChild = rootObject->findChildren<QObject *>("deepChild",Qt::FindDirectChildrenOnly); //FindChildrenRecursively

    if(deepChild.count() > 0) {
        qDebug() << "Found " << deepChild.count() << "deepChildren, printing out their levels: ";

        foreach(QObject *object, deepChild){
            qDebug() << "The child level is: " << object->property("level").toString();
        }
    }

    return app.exec();
}
