#include <QPen>
#include <QBrush>
#include <QPainter>
#include "stairchart.h"

StairChart::StairChart(QQuickItem *parent)
    : QQuickPaintedItem{parent}
{
    setWidth(400);
    setHeight(400);
}

void StairChart::paint(QPainter *painter)
{
    QRect mRect(0,0,width(),height());
    QPen mPen;
    mPen.setColor(Qt::red);
    mPen.setWidth(4);

    painter->setPen(mPen);
    painter->drawRect(mRect);

    painter->setPen(Qt::yellow);
    painter->setBrush(QBrush(Qt::yellow));

    drawRect(painter,mRect,Qt::red,200,50);
    drawRect(painter,mRect,Qt::yellow,120,100);

    //    painter->setPen(Qt::red);
    //    painter->setBrush(QBrush(Qt::yellow));

    //    painter->drawRect(mRect.bottomLeft().x()+110,
    //                      mRect.bottomLeft().y()-150,
    //                      50,200);
}

void StairChart::drawRect(QPainter *painter, QRect mRect, QColor color, qreal barvalue, int startingpoint)
{
    painter->setPen(color);
    painter->setBrush(QBrush(color));

    painter->drawRect(mRect.bottomLeft().x()+startingpoint,
                      mRect.bottomLeft().y()-barvalue,
                      50,barvalue);
}
