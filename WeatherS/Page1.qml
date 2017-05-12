import QtQuick 2.7
import QtPositioning 5.8

Page1Form {
    id: page1
    signal setCoord(real lat,real lon)
    signal setWeather(string city,string code)
    //Запрос текущей погоды
    button1.onClicked: {
        if(textField1.text!=settings.name){
        var request = new XMLHttpRequest()
        var name=textField1.text
        settings.name=textField1.text
        if(name.length>0){
        request.open('GET', 'http://api.openweathermap.org/data/2.5/weather?q='+name+'&APPID=fc61e15c687ad6fca59495735cdf3719&units=metric&lang=ru')
        request.onreadystatechange = function () {
            if (request.readyState === XMLHttpRequest.DONE) {
                if (request.status === 200) {
                    //console.log(request.responseText)
                } else {
                    console.log("HTTP request failed", request.status)
                    return
                }
            }
        //Сохранение текущей погоды
            settings.weatherString=request.responseText
            settings.dateOfForecast=new Date();
        //Присвоение полученых данных
            var JsonObject = JSON.parse(request.responseText);

                var nameCity = JsonObject.name
                var iconid = JsonObject.weather[0].icon
                btnImg.source="http://openweathermap.org/img/w/"+iconid+".png"
                weathers.text=JsonObject.weather[0].description
                temper.text=JsonObject.main.temp
                wind.text=JsonObject.wind.speed
                var lat=JsonObject.coord.lat
                var lon=JsonObject.coord.lon
                page1.setCoord(lat,lon)

        }
        //Запрашиваем прогноз
        page1.setWeather(name,0)
        page2.weather(name,0)
        request.send()

        }

    }else{
            //Присваеваем сохраненные данные без запроса
            var JsonObject = JSON.parse(settings.weatherString);

                var nameCity = JsonObject.name
                var iconid = JsonObject.weather[0].icon
                btnImg.source="http://openweathermap.org/img/w/"+iconid+".png"
                weathers.text=JsonObject.weather[0].description//погода
                temper.text=JsonObject.main.temp//температура
                wind.text=JsonObject.wind.speed//ветер
                var lat=JsonObject.coord.lat
                var lon=JsonObject.coord.lon
                page1.setCoord(lat,lon)//задаем координаты города
                page1.setWeather(name,1)
                page2.weather(name,1)

        }

    }

}
