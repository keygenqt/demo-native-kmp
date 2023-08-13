#ifndef KMP_H
#define KMP_H

#include <QObject>
#include <QtQml>

class KMP : public QObject
{
    Q_OBJECT

public:
    Q_PROPERTY(QString name READ getName CONSTANT)
    QString getName();
};

#endif // KMP_H
