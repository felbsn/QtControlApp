#ifndef APPCONSOLE_H
#define APPCONSOLE_H

#include <QObject>
#include <QDebug>

class AppConsole : public QObject
{
    Q_OBJECT
public:
   explicit AppConsole(QObject *parent = nullptr);
public:


    void log(QString s);

signals:
    void consoleLog(QString s);

public slots:

};

static AppConsole* console = NULL;





#endif // APPCONSOLE_H
