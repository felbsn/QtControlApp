import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id:consoleWin
    visible: true
    width: 640
    height: 480
    title: qsTr("console")



    TextArea
    {
        Rectangle
        {
            anchors.fill: parent
            z:-1
        }

        id:console_text
        width: parent.width -send_btn.width

        Keys.onReturnPressed:
        {
            send_btn.clicked();

        }

    }
    Button
    {
        id:send_btn
        text:"send"
        anchors.left: console_text.right
        height: console_text.height

        onClicked: {
            if(console_text.text.length > 1)
            {
                console.log("text > " +console_text.text);

                consoleMain_lm.append({text: ">" + console_text.text})

                console_text.text = "";
            }

        }


    }


   ListView
    {
        id:consoleMain_lv
        width: parent.width
        anchors.top: send_btn.bottom
        height: parent.height- send_btn.height*2



        delegate: Text {
            id: name
            text: model.text
        }


        model: ListModel
        {
            id:consoleMain_lm

        }

        Component.onCompleted: {
             //    consoleMain_lm.append({"text": " giriş mesajı" })
        }
    }

   Row
   {
    y:parent.height -height
    height:  send_btn.height
          ComboBox
          {
              editable: false;
              model: ListModel
              {
                    id:consoleCbox_lm
              }

           }

          Label
          {
              Component.onCompleted:
              {
                  consoleCbox_lm.append({text: " karde neler oldu " })
              }

              text:"status OK"
          }
   }

}


