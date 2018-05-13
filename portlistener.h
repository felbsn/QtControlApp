#ifndef PORTLISTENER_H
#define PORTLISTENER_H

#include <QObject>
#include <QThread>

#include "typedefinitions.h"

static int xxx = 0;

class PortListener :public QObject
{
    Q_OBJECT
public slots:
    void listenPort( bool runStatus)
    {
        int i = 0;
       while(true)
       {
           xxx++;
           QString str = "port sends from addres " ;
           QString strNum = QString::number(address);
            str += strNum;
            str += " > ";
            str += QString::number(i);
            str += " -----> ";
            str += QString::number(xxx);

           qDebug(str.toStdString().c_str()  );
           QThread::sleep(1);

           QByteArray data(" denema  \n");//= new QByteArray(" denema \n");




           /*while (!port.canReadLine())
               port.waitForReadyRead(-1);



           while (port.canReadLine())
               out << "< " << port.readLine(); // lines are already terminated*/

            emit inComingData( address  , data);
           i++;
       }

    }

signals:
    void inComingData(int address  , QByteArray data);

public:
    PortAddress address;


};

#endif // PORTLISTENER_H
