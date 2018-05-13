#include "portmanager.h"




PortManager::PortManager(QObject *parent) : QObject(parent)
{

    ports = new QSerialPort[PortCount];



     ports[PortPanel].setPortName("");
     ports[PortPanel].setBaudRate(9600);
     ports[PortPanel].setDataBits(QSerialPort::Data8);
     ports[PortPanel].setParity(QSerialPort::NoParity);
     ports[PortPanel].setStopBits(QSerialPort::OneStop);
     ports[PortPanel].setFlowControl(QSerialPort::NoFlowControl);

     ports[PortStm].setPortName("");
     ports[PortStm].setBaudRate(9600);
     ports[PortStm].setDataBits(QSerialPort::Data8);
     ports[PortStm].setParity(QSerialPort::NoParity);
     ports[PortStm].setStopBits(QSerialPort::OneStop);
     ports[PortStm].setFlowControl(QSerialPort::NoFlowControl);

}


void PortManager::SetPortList()
{

      QList<QString> qlist;
       for ( int i = 0 ; i <  QSerialPortInfo::availablePorts().size() ; i++) {
           qlist.append(QSerialPortInfo::availablePorts()[i].portName());
           //qDebug() << " here a port " <<  QSerialPortInfo::availablePorts()[i].portName() << " \n";
       }
       emit portSetList( qlist);


}



void PortManager::readPortThread()
{
   /* QString str = "";
  //  while (!port.canReadLine())
 //         port.waitForReadyRead(-1);
    while (port.canReadLine())
    {
        str += port.readLine().data();
        //  qDebug() << "< " << port.readLine().data() << '\n'; // lines are already terminated
         // console->log(port.readLine());
    }

      qDebug() << "=>" <<str << endl;

     cons->log( "<" + str);*/


}


void PortManager::selectPort(int  portAddress , QString s)
{
    qDebug() << "port select attempts  " <<  portAddress  << " - " << s << '\n';
    if(s != NULL)
    {
        ports[portAddress].setPortName(s);

        if (! ports[portAddress].open(QSerialPort::ReadWrite)) {
            qDebug() << "Error opening serial port: " << ports[portAddress].errorString() << endl;
        }else
        {
            qDebug() << "Connected on port " <<  ports[portAddress].portName() << endl;
        }




    }else
    {
        qDebug() << "port secilemedi \n";
    }

}

 void PortManager::sendMessage(int  portAddress , QByteArray data)
 {
 qDebug()  <<   " message emitted as "  << data.data()   << " \n" ;

    // QString str(data.data());
    // str += QString::number(portAddress);


  //  qDebug()  <<   " message emitted as " << str;
    /* if(isConnected)
     {

          s+= '\n';
          if(cons == NULL) qDebug() << "nasil oldu da konsolum null oldu ? \n";
          else
          cons->log(s);
          ports[portAddress].write(s.toStdString().c_str());
         //  qDebug() << "Writed >>> " << s.toStdString().c_str() << endl;


        //  readPortThread();
     }else
     {
          qDebug() << " not connected to a port\n";
     }*/

 }

 void PortManager::checkSerial()
 {
    // readPortThread();
 }

