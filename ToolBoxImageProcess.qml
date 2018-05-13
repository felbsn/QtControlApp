import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3
Item {

    width: window.width*0.3
    height: window.height


    Column
    {
        topPadding: 5
        spacing:20

        Label
        {

            height: 30
             width: parent.width
             text:"Tuslar"
             font.pixelSize: 30
             horizontalAlignment:Text.AlignHCenter
             verticalAlignment: Text.AlignVCenter

        }

        Row
        {
            Button{
                width: 120
                height: 30
                text:"b1"


            }
            Button{

                width: 120
                height: 30
                text:"b2"

            }
            Button{
                width: 120
                height: 30
                text:"b3"
            }
        }

        Row
        {
            height: 30
             width: parent.width
            Rectangle
            {
                 height: 30
                 width: parent.width
                color: "white"
            }
        }


        Row
        {
            ComboBox
            {
                id:portSelectorComboBox
                editable: false
                model: ListModel {
                    id: model


            ListElement { text: "Metod0" }
            ListElement { text: "Metod1" }
            ListElement { text: "Metod2" }
            ListElement { text: "Metod3" }
            ListElement { text: "Metod4" }
            ListElement { text: "Metod5" }
            ListElement { text: "Metod6" }
                }

                onCurrentIndexChanged:
                {
                    console.log("combobox index = " + currentIndex +" : " + currentText)
                }

            }


            Button
            {
                text:"reset"
            }
        }

        Row
        {
            height: 30
             width: parent.width
             Rectangle
             {
                  height: 30
                  width: parent.width
                 color: "white"
             }

        }

        Row
        {
            // width: parent.width

            Text {
                id:imParam0
                text: qsTr("text")
              //   width: parent.width *0.3
            }
            Slider{
               //  width: parent.width *0.7

                onValueChanged:
                {
                    console.log(" here 1 val: " + value)
                    imParam0.text  = "%" + (value*100).toFixed(0)
                }

            }
        }

        Row
        {
            Text {
                id:imParam1
                text: qsTr("text")
            }
            Slider{
                onValueChanged:
                {
                      imParam1.text = "%" + (value*100).toFixed(0)
                }

            }
        }

        Row
        {
            Text {
                id:imParam2
                text: qsTr("text")
            }
            Slider{
                onValueChanged:
                {
                      imParam2.text = "%" + (value*100).toFixed(0)
                }

            }
        }


        Button
        {
            text:"read image"

            onClicked:
            {
                console.log("attemt to read");
                imageReaderRef.readImageFrom("some path");
            }
        }


    }

}

/* Connections
 {
     target: portManagerRef
     onPortSetList:
     {
         console.log("just")
         for(var i = 0; i < list.length ; i++)
         {
             model.append({text: list[i] });
         }
         portSelectorComboBox.currentIndex = 0;
     }
 }*/
