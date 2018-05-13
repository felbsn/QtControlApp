import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3


Item {

    Column
    {


        Label
        {


            text:qsTr("ayarlar")
            font.pixelSize: 30
             anchors { top: myIcon.bottom; horizontalCenter: parent.horizontalCenter }
        }



    Row
    {


        Tumbler {



            currentIndex: 1;
            id:precTumbler0


            model: 100;
            visibleItemCount: 1

            height: 60
             width: 120

            delegate: Text {

                font.pixelSize: 30
                id: prec0
                text: "KV " + modelData

            }

        }

        Tumbler {



            currentIndex: 1;
            id:precTumbler1


            model: 100;
            visibleItemCount: 1

            height: 60
              width: 120


            delegate: Text {

                font.pixelSize: 30
                id: prec1
                text: "mA " + modelData

            }

        }

        Tumbler {




            currentIndex: 1;
            id:precTumbler2


            model: 100;
            visibleItemCount: 1

            height: 60
              width: 120


            delegate: Text {

                font.pixelSize: 30
                id: prec2
                text: "mS " + modelData

            }

        }


    }

    Label
    {
        text:qsTr("ayarlar")
         font.pixelSize: 30
         anchors { top: myIcon.bottom; horizontalCenter: parent.horizontalCenter }
    }


    GridView {
        y:120
        width: parent.width
        height: 700;
        cellWidth: 100; cellHeight: 100
        focus: true
        model: appModel

        highlight: Rectangle { width: 80; height: 80; color: "lightsteelblue" }

        delegate: Item {


                width: 100; height: 100


                 Image {
                    id: myIcon
                     y: 20; anchors.horizontalCenter: parent.horizontalCenter
                    source: iconPath
                    width: 60
                    height: 60
                    fillMode:  Image.PreserveAspectFit
                }
                Text {
                    anchors { top: myIcon.bottom; horizontalCenter: parent.horizontalCenter }
                    text: name
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked:{

                        parent.GridView.view.currentIndex = index

                        precTumbler0.currentIndex = defaultKv;
                        precTumbler1.currentIndex = defaultMa;
                        precTumbler2.currentIndex = defaultMs;

                    }

                }



                }
    }


       }



    ListModel {
        id: appModel
        ListElement { name: "kucuk insan"; defaultKv:"30";defaultMa:"30"; defaultMs:"30";iconPath: "RES/wave.jpg" }
        ListElement { name: "kucuk insan"; defaultKv:"70";defaultMa:"80"; defaultMs:"40";iconPath: "RES/wave.jpg" }
        ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"60"; defaultMs:"12";iconPath: "RES/wave.jpg" }
        ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"10"; defaultMs:"12";iconPath: "RES/wave.jpg" }
        ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"20"; defaultMs:"12";iconPath: "RES/wave.jpg" }
        ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"45"; defaultMs:"12";iconPath: "RES/wave.jpg" }
        ListElement { name: "insan tipi"; defaultKv:"22";defaultMa:"60"; defaultMs:"12";iconPath: "RES/wave.jpg" }
        ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"65"; defaultMs:"12";iconPath: "RES/wave.jpg" }
        ListElement { name: "insan tipi"; defaultKv:"2";defaultMa:"32"; defaultMs:"12";iconPath: "RES/wave.jpg" }
        ListElement { name: "insan tipi"; defaultKv:"80";defaultMa:"1"; defaultMs:"12";iconPath: "RES/wave.jpg" }

    }



}
