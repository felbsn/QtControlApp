import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3

Page {
    id: mainPanel
    title:"X-RAY"



    Connections
    {
        target: imageReaderRef
        onImageDataRecived:
        {
            imageBox.data = imgData.data;
            console.log(imgData)
            //imageBox.s

        }
    }

        /*ToolBoxImageProcess
        {
            width: parent.width -imageBox.width
        }*/

    TabBar {
        id: bar
        width: parent.width -imageBox.width
        TabButton {
            text: qsTr("XRaySettings")
        }
        TabButton {
            text: qsTr("Image")
        }
        TabButton {
            text: qsTr("file")
        }
        x:imageBox.width
    }


        StackLayout
        {
            currentIndex: bar.currentIndex
            id:toolsView
            x:imageBox.width
            y:bar.height
            width: parent.width -imageBox.width
            height: parent.height

                XRaySettings
                {
                    //visible:
                  //   width: parent.width
                }
                ToolBoxImageProcess
                {
                    //   width: parent.width
                }
                TestTemplate
                {
                   //  width: parent.width
                }

                onCurrentIndexChanged:
                {
                    toolsView.index
                }

        }


        Image {

            id: imageBox
            source: "RES/lunge.jpg"
            //source: "D:\\stack\\wave.jpg"
            width: mainPanel.width *0.7
            height: mainPanel.height*0.7
            fillMode:  Image.PreserveAspectFit

        }








  }

/*


    Button
    {
        text: "Console window ";

        onClicked: {
           //var component = Qt.createComponent("PortConsole.qml");
            var component = Qt.createComponent("PortConsole.qml");
           console.log("Component Status:", component.status, component.errorString());
           var win = component.createObject(item1);
           win.show();
        }
    }


*/



/*




    Row
    {
        id:portConnector_row
        x:(parent.width -width)/2
        ComboBox
        {
            id:portSelectorComboBox
            editable: false
            model: ListModel {
                id: model

            }

            Connections
            {
                target: portManagerRef
                onPortSetList:
                {
                    console.log("here i am")
                    for(var i = 0; i < list.length ; i++)
                    {
                        model.append({text: list[i] });
                    }
                    portSelectorComboBox.currentIndex = 0;
                }
            }

        }


        Button
        {
            id:connectButton

            text:"buutttoon"
            onClicked:
            {
                portManagerRef.selectPort(portSelectorComboBox.currentText);

            }

        }



    }







    TextField
    {
        anchors.top: portConnector_row.bottom
        width: parent.width
        id:serialConsole
        selectByMouse: true;

    }






    Button
    {
        text:"send"
        id:sendButton

        onClicked:
        {
            portManagerRef.sendMessage(serialConsole.text)
        }
    }

    Button
    {
        text:"console"
        id:testBTN
        onClicked:
        {
            var component = Qt.createComponent("PortConsole.qml");
            console.log("Component Status:", component.status, component.errorString());
          var win = component.createObject(testBTN);
           win.show();
        }
    }

    Button
    {
        text:"check"
        id:checkButton
        x:(parent.width-width)/2;
        anchors.top: sendButton.bottom

        onClicked:
        {
            portManagerRef.checkSerial();
        }
    }



    Rectangle
    {
        width: 300;
        height: 60;
        x:(parent.width-width)/2;
        y:parent.height-height;
        radius: 5;
        color: 'gray'


        ListView {
            id: listView
            anchors.fill: parent;


            delegate: Text {
                id: name
                text: model.text
            }


            model: ListModel {
                id:mtd0list

              //  ListElement {count:0 ;x0:0 ; xd:0; Result :0 }

            }

        Connections
        {
        target: appConsoleRef
        onConsoleLog:
           {
            mtd0list.append({"text":s});
           }
       }


        onContentHeightChanged:
        {
            listView.positionViewAtEnd();
        }
      }
    }
*/



