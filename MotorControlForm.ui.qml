import QtQuick 2.4
import QtQuick.Controls 2.3

Item {
    width: 400
    height: 400
    property alias slider: slider

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent

        Slider {
            id: slider
            x: 100
            y: 93
            value: 0.5
        }

        TextArea {
            id: textArea
            x: 50
            y: 101
            text: qsTr("X:000")
        }

        Slider {
            id: slider1
            x: 100
            y: 139
            value: 0.5
        }

        TextArea {
            id: textArea1
            x: 50
            y: 147
            text: qsTr("X:000")
        }

        Slider {
            id: slider2
            x: 100
            y: 180
            value: 0.5
        }

        TextArea {
            id: textArea2
            x: 50
            y: 188
            text: qsTr("X:000")
        }

        Button {
            id: button
            x: 200
            y: 244
            text: qsTr("Reset")
        }

        Button {
            id: button1
            x: 94
            y: 244
            text: qsTr("Button")
        }
    }
}
