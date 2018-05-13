#include "appconsole.h"



AppConsole::AppConsole(QObject *parent) : QObject(parent)
{
    if(console == NULL)
        console = this;
}

void AppConsole::log(QString s)
{
    emit consoleLog(s);
}

/*bool AppConsole::Initialize()
{
    if(console == NULL)
    {

    }
}*/
