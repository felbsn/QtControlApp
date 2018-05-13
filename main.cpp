#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>
#include<QDebug>

#include "portmanager.h"
#include "appconsole.h"
//#include "imagereader.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;


    PortManager* portMngr = new PortManager();

   // ImageReader* imgReader = new ImageReader();

    QQmlContext * ctx = engine.rootContext();





//imgReader->readImageFrom("1");


    ctx->setContextProperty("portManagerRef" , portMngr);

   //  ctx->setContextProperty("imageReaderRef" , imgReader);
    //engine.addImageProvider("imgProvider" , imgReader);


    console = new AppConsole();
    ctx->setContextProperty("appConsoleRef" , console);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));





     portMngr->SetPortList();


   /*  portMngr->startThread();
     portMngr->operatePort(  1);
     portMngr->operatePort(  2);
     portMngr->operatePort(  3);
     portMngr->operatePort(  4);*/

   //  portMngr->operatePort(2);


        portMngr->testCon(console);
        if (engine.rootObjects().isEmpty())
        return -1;



    return app.exec();

}
