#include "process.h"

Process::Process(QObject *parent)
    : QProcess{parent}
{

}

void Process::start(const QString &program, const QVariantList &arguments)
{
    QStringList args;
    qInfo() << "QProcess start";

    for(int i=0; i<arguments.length();i++){
        args << arguments[i].toString();
    }

    foreach(QString a,args){
        qInfo() << a;
    }

    QProcess::start(program,args);
}

QByteArray Process::readAll()
{
//    qInfo() << "Return value" << QProcess::readAll();
    return QProcess::readAll();
}
