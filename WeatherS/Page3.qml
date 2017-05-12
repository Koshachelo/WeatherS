import QtQuick 2.4
import QtLocation 5.6
import QtPositioning 5.5
Page3Form {
    property alias mapp: mapp
    //Плагин карты
    Plugin {
        id: osmPlugin
        name: "osm"
        // specify plugin parameters if necessary
        // PluginParameter {
        //     name:
        //     value:
        // }
    }
    //Обьявляем карту
    Map {
        id:mapp
        anchors.fill: parent
        plugin: osmPlugin
        center: QtPositioning.coordinate(46.84, 35.37)
        zoomLevel: 10
    }
}
