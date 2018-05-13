import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3

Item {

    Tumbler {

        currentIndex: 1;
        id:precTumbler


        model: 100;
        visibleItemCount: 1

        height: prec.height


        delegate: Text {

            font.pixelSize: 30
            id: prec
            text:  modelData

        }

    }
}
