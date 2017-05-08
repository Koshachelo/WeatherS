import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
import QtLocation 5.6
import QtPositioning 5.5
import Qt.labs.settings 1.0
ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("WeatherS")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        Page1 {
        onSetCoord: {
           page3.mapp.center=QtPositioning.coordinate(lat, lon)
        }

        onSetWeather: {
        page2.weather(city,code)
        }
        }

        Page2 {
            id: page2
        }
        Page3{
        id: page3
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Текущая погода")
        }
        TabButton {
            text: qsTr("Погода на пять дней")
        }
        TabButton {
            text: qsTr("Карта")
        }
        Settings {
                id: settings
                property string weatherString: ""
                property string forecastString: ""
                property date dateOfForecast: new Date()
                property string name: ""

            }
    }
}
