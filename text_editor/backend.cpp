#include "backend.h"

backend::backend(QObject *parent)
    : QObject{parent}
{
    m_path = QCoreApplication::applicationDirPath();
    m_path.append("/file.txt");
}

QString backend::path()
{
    return m_path;
}

void backend::setPath(QString value)
{
    m_path = value;
    m_path.remove("file://");
    emit pathChanged();
}

QString backend::data()
{
    QFile file(m_path);
    if(!file.open(QIODevice::ReadOnly)){
        qWarning() << "could not read file !";
        return "";
    }

    QTextStream stream(&file);
    QString value = stream.readAll();
    file.close();
    return value;
}

void backend::setData(QString value)
{
    QFile file(m_path);
    if(!file.open(QIODevice::WriteOnly)){
        qWarning() << "could not write file !";
    }

    QTextStream stream(&file);
    stream << value;
    stream.flush();
    file.close();

    emit dataChanged();
}
