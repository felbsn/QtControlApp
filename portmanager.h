#ifndef PORTMANAGER_H
#define PORTMANAGER_H

#include <QObject>
#include <QDebug>

#include <QSerialPortInfo>
#include <QSerialPort>

#include <appconsole.h>
#include <thread>


#include "typedefinitions.h"
#include "portlistener.h"



class PortManager : public QObject
{
    Q_OBJECT
public:
    explicit PortManager(QObject *parent = nullptr);

    void SetPortList();
    void testCon(AppConsole* cons)
    {
this->cons = cons;
    }

    void startThread()
    {

        PortListener *plistener = new PortListener();
        plistener->address = PortAddress(23);
        plistener->moveToThread(&workerThread);

        connect(&workerThread, &QThread::finished, plistener, &QObject::deleteLater);

        connect(this, &PortManager::operatePort, plistener, &PortListener::listenPort);

        connect(plistener,  SIGNAL(inComingData(int,QByteArray)), this, SLOT(sendMessage(int,QByteArray)));
        workerThread.start();



        PortListener * plistener2 = new PortListener();
        plistener2->address = PortAddress(9);
        plistener2-> moveToThread(&worker2thread);

        connect(&worker2thread, &QThread::finished, plistener2, &QObject::deleteLater);

        connect(this, &PortManager::operatePort, plistener2, &PortListener::listenPort);

        connect(plistener2,  SIGNAL(inComingData(int,QByteArray)), this, SLOT(sendMessage(int,QByteArray)));

       // worker2thread.start();
    }

signals:
    void portFeedBack(QString s);
    void portSetList( QList<QString> list);
    void portSendMessage(int address  , QString s);
    void operatePort( bool runStatus);
    void operatePort2( bool runStatus);
public slots:
    void checkSerial();
    void selectPort( int  portAddress , QString s);
    void sendMessage(int  portAddress,QByteArray data);
    void readPortThread();


private:
      QThread worker2thread ;
           QThread workerThread;
    AppConsole* cons;
    QSerialPort* ports;
    QSerialPort portStm;
    QSerialPort portPanel;

  //  QThread workerThread;


    bool isConnected = false;
};

#endif // PORTMANAGER_H
