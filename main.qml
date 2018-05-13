import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3

ApplicationWindow {
    id:window
    visible: true
    width: 1280
    height: 720
    title: qsTr("Control Application")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton

            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            id:topLabel;
            text:stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {
         id: drawer
         width: window.width * 0.33
         height: window.height

         Column {
             anchors.fill: parent


             ItemDelegate {
                 text: qsTr("Port Settings")
                 width: parent.width
                 onClicked: {
                     stackView.push("PortSettings.qml")
                     drawer.close()
                 }
             }

             ItemDelegate {
                 text: qsTr("Controls")
                 width: parent.width
                 onClicked: {
                     stackView.push("MotorControlForm.ui.qml")
                     drawer.close()
                 }
             }

             ItemDelegate {
                 text: qsTr("Test Settings")
                 width: parent.width
                 onClicked: {
                     stackView.push("TestQml.qml")
                     drawer.close()
                 }
             }
         }


     }


    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "MainPageUx.qml";


        onCurrentItemChanged: {
      //       console.log("item Changed :" + stackView.depth + " -> " + stackView.get(stackView.depth , "title")); /// at here,you can update view title
         }


        }






}
