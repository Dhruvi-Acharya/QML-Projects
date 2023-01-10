#include "test.h"

test::test(QObject *parent)
    : QObject{parent}
{

}

int test::number()
{
    qInfo() << "called number()";
    return 42;
}

void test::bark()
{
    qInfo() << "Bark Bark Bark";
}
