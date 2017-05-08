import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Item {
    property alias textField1: textField1
    property alias button1: button1
    property alias btnImg: btnImg
    property alias weathers: weathers
    property alias temper: temper
    property alias wind: wind
    id:itm
    RowLayout {
        id: rw
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        anchors.top: parent.top


        TextField {
            id: textField1
            placeholderText: qsTr("Введите название города")
        }

        Button {
            id: button1
            text: qsTr("ВВод")
        }
    }
    GridLayout{
        id: grd
        anchors.horizontalCenter: parent.horizontalCenter
       anchors.top: rw.bottom
       anchors.topMargin: 20
       anchors.left: rw.left
       RowLayout{
           id:rw1
           anchors.top: parent.top

           Image{
            id: btnImg
            width: 50
            height: 50
            fillMode: Image.Stretch
            sourceSize.height: 50
            sourceSize.width: 50
           }}
       RowLayout{
            id: wth
            anchors.top: rw1.bottom
            anchors.topMargin: 20
            anchors.left: rw1.left
            Label{
                text: qsTr("Погода:")
            }
            Label{
                id:weathers
            }}
            RowLayout{
                id:temp
                anchors.top: wth.bottom
                anchors.topMargin: 20
                 anchors.left: wth.left
                Label{
                    text: qsTr("Температура, °С:")
                }
                Label{
                    id:temper
                }
        }
            RowLayout{
                anchors.top: temp.bottom
                anchors.topMargin: 20
                anchors.left: temp.left
                Label{
                    text: qsTr("Ветер, м/с:")
                }
                Label{
                    id:wind
                }
        }

    }
}
