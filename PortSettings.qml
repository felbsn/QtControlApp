import QtQuick 2.4
import QtQuick.Controls 2.3

Page {
    title: qsTr("Port Options")



    ListView {
        anchors.fill: parent

        model: lm0

        delegate: Row {
            width: parent.width
            Text {
                text: name + ": " + number
                width: parent.width * 0.3
            }
            Button {
                text: "Set"


                onClicked: {
                      console.log("clicked on " + name + " : " + number);
                }

            }
            RadioButton
            {

                text:{
                    console.log(number);
                     if(connectionStatus) text = number;
                     else text = "Not Connected";

                }
                id:rad;
                checkable: false;
                checked: false;
            }




        }
    }

    ListModel {
        id: lm0
        ListElement {
            name: "Bill Smith"
            number: "555 3264"
            connectionStatus:false;
        }
        ListElement {
            name: "John Brown"
            number: "555 8426"
             connectionStatus:true;
        }
        ListElement {
            name: "Sam Wise"
            number: "555 0473"
             connectionStatus:false;
        }
    }
}
