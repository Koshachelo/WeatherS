import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    id: itm
    property alias image:image
    property alias image1:image1
    property alias image2:image2
    property alias image3:image3
    property alias image4:image4
    property alias day1:day1
    property alias day2:day2
    property alias day3:day3
    property alias day4:day4
    property alias day5:day5
    property alias min1:min1
    property alias min2:min2
    property alias min3:min3
    property alias min4:min4
    property alias min5:min5
    property alias max1:max1
    property alias max2:max2
    property alias max3:max3
    property alias max4:max4
    property alias max5:max5
    GridLayout{
        anchors.fill: parent
        Label {
            id: text1
            width: 104
            height: 14
            text: qsTr("Число:       ")
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.left: parent.left
            anchors.leftMargin: 80
        }

        Label {
            id: day1
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.left: text1.right
            anchors.leftMargin: 80

        }

        Label {
            id: day2
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.left: text1.right
            anchors.leftMargin: 160

        }

        Label {
            id: day3
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.left: text1.right
            anchors.leftMargin: 240

        }

        Label {
            id: day4
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.left: text1.right
            anchors.leftMargin: 320

        }

        Label {
            id: day5
            anchors.top: parent.top
            anchors.topMargin: 70
            anchors.left: text1.right
            anchors.leftMargin: 400

        }

        Label {
            id: text2
            text: qsTr("Ночь, °С:")
            anchors.top: label.top
            anchors.topMargin: 50
            anchors.left: parent.left
            anchors.leftMargin: 80
        }


        Label {
            id: min1
            anchors.top: label.top
            anchors.topMargin: 50
            anchors.left: text2.right
            anchors.leftMargin: 80

        }

        Label {
            id: min2
            anchors.top: label.top
            anchors.topMargin: 50
            anchors.left: text2.right
            anchors.leftMargin: 160

        }


        Label {
            id: min3
            anchors.top: label.top
            anchors.topMargin: 50
            anchors.left: text2.right
            anchors.leftMargin: 240

        }

        Label {
            id: min4
            anchors.top: label.top
            anchors.topMargin: 50
            anchors.left: text2.right
            anchors.leftMargin: 320

        }

        Label {
            id: min5
            anchors.top: label.top
            anchors.topMargin: 50
            anchors.left: text2.right
            anchors.leftMargin: 400

        }

        Label {
            id: max
            text: qsTr("День, °С:")
            anchors.top: text2.top
            anchors.topMargin: 50
            anchors.left: parent.left
            anchors.leftMargin: 80
        }

        Label {
            id: max1
            anchors.top: text2.top
            anchors.topMargin: 50
            anchors.left: max.right
            anchors.leftMargin: 80

        }

        Label {
            id: max2
            anchors.top: text2.top
            anchors.topMargin: 50
            anchors.left: max.right
            anchors.leftMargin: 160

        }

        Label {
            id: max3
            anchors.top: text2.top
            anchors.topMargin: 50
            anchors.left: max.right
            anchors.leftMargin: 240

        }

        Label {
            id: max4
            anchors.top: text2.top
            anchors.topMargin: 50
            anchors.left: max.right
            anchors.leftMargin: 320

        }

        Label {
            id: max5
            anchors.top: text2.top
            anchors.topMargin: 50
            anchors.left: max.right
            anchors.leftMargin: 400

        }

        Label {
            id: label
            text: qsTr("Погода:  ")
            anchors.top: text1.top
            anchors.topMargin: 50
            anchors.left: parent.left
            anchors.leftMargin: 80
        }

        Image {
            id: image
            width: 50
            height: 50
            sourceSize.height: 50
            sourceSize.width: 50
            anchors.top: text1.top
            anchors.topMargin: 20
            anchors.left: label.right
            anchors.leftMargin: 80
        }
        Image {
            id: image1
            width: 50
            height: 50
            sourceSize.height: 50
            sourceSize.width: 50
            anchors.top: text1.top
            anchors.topMargin: 20
            anchors.left: label.right
            anchors.leftMargin: 160
        }

        Image {
            id: image2
            width: 50
            height: 50
            sourceSize.height: 50
            sourceSize.width: 50
            anchors.top: text1.top
            anchors.topMargin: 20
            anchors.left: label.right
            anchors.leftMargin: 240
        }

        Image {
            id: image3
            width: 50
            height: 50
            sourceSize.height: 50
            sourceSize.width: 50
            anchors.top: text1.top
            anchors.topMargin: 20
            anchors.left: label.right
            anchors.leftMargin: 320
        }

        Image {
            id: image4
            width: 50
            height: 50
            sourceSize.height: 50
            sourceSize.width: 50
            anchors.top: text1.top
            anchors.topMargin: 20
            anchors.left: label.right
            anchors.leftMargin: 400
        }
    }
}
