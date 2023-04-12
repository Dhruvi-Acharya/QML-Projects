#ifndef STAIRCHART_H
#define STAIRCHART_H

#include <QObject>
#include <QQuickPaintedItem>

class StairChart : public QQuickPaintedItem
{
    Q_OBJECT
public:
    explicit StairChart(QQuickItem *parent = nullptr);

    void paint(QPainter *painter);

signals:

private:
    void drawRect(QPainter *painter, QRect mRect, QColor color, qreal barvalue,
                  int startingpoint);
};

#endif // STAIRCHART_H
