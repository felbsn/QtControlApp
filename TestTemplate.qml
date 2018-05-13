import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3


Item {


    anchors.fill: parent;
   /*Label
    {
        text:" file ops "

        anchors.fill:parent;
    }
*/

    ListView
     {
         id:consoleMain_lv
         width: parent.width
         height: parent.height



         delegate: Text {
             id: name
             text: model.name

             MouseArea
             {
                 anchors.fill:  parent;
                 onClicked:
                 {
                     console.log(" cv " + index);
                 }
             }
         }


         model: ListModel
         {
             id:consoleMain_lm

             ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"1"; defaultMs:"12";iconPath: "RES/wave.jpg" }
             ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"1"; defaultMs:"12";iconPath: "RES/wave.jpg" }
             ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"1"; defaultMs:"12";iconPath: "RES/wave.jpg" }
             ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"1"; defaultMs:"12";iconPath: "RES/wave.jpg" }


         }

         Component.onCompleted: {
              //    consoleMain_lm.append({"text": " giriş mesajı" })
         }
     }






}
