import QtQuick 2.4

Page2Form {
    id: pg2

   signal weather(string city,int code)
    onWeather: {
        if(code==0){
        var request = new XMLHttpRequest()
        var name=city
        if(name.length>0){
        request.open('GET', 'http://api.openweathermap.org/data/2.5/forecast/daily?q='+name+'&APPID=fc61e15c687ad6fca59495735cdf3719&units=metric&lang=ru')
        request.onreadystatechange = function () {
            if (request.readyState === XMLHttpRequest.DONE) {
                if (request.status === 200) {
                  //  console.log(request.responseText)
                } else {
                    console.log("HTTP request failed", request.status)
                    return
                }
            }
            settings.forecastString=request.responseText
            var JsonObject = JSON.parse(request.responseText);
            image.source="http://openweathermap.org/img/w/"+JsonObject.list[0].weather[0].icon+".png"
            image1.source="http://openweathermap.org/img/w/"+JsonObject.list[1].weather[0].icon+".png"
            image2.source="http://openweathermap.org/img/w/"+JsonObject.list[2].weather[0].icon+".png"
            image3.source="http://openweathermap.org/img/w/"+JsonObject.list[3].weather[0].icon+".png"
            image4.source="http://openweathermap.org/img/w/"+JsonObject.list[4].weather[0].icon+".png"
                    min1.text=Number(JsonObject.list[0].temp.night)
                    min2.text=Number(JsonObject.list[1].temp.night)
                    min3.text=Number(JsonObject.list[2].temp.night)
                    min4.text=Number(JsonObject.list[3].temp.night)
                    min5.text=Number(JsonObject.list[4].temp.night)
                         max1.text=Number(JsonObject.list[0].temp.day)
                         max2.text=Number(JsonObject.list[1].temp.day)
                         max3.text=Number(JsonObject.list[2].temp.day)
                         max4.text=Number(JsonObject.list[3].temp.day)
                         max5.text=Number(JsonObject.list[4].temp.day)
                            var date1=new Date(JsonObject.list[0].dt* 1000)
                            var date2=new Date(JsonObject.list[1].dt* 1000)
                            var date3=new Date(JsonObject.list[2].dt* 1000)
                            var date4=new Date(JsonObject.list[3].dt* 1000)
                            var date5=new Date(JsonObject.list[4].dt* 1000)
                            day1.text=date1.toUTCString().substring(0,2)
                            day2.text=date2.toUTCString().substring(0,2)
                            day3.text=date3.toUTCString().substring(0,2)
                            day4.text=date4.toUTCString().substring(0,2)
                            day5.text=date5.toUTCString().substring(0,2)
}
            request.send()
        }}
    else{
            var JsonObject = JSON.parse(settings.forecastString);
            image.source="http://openweathermap.org/img/w/"+JsonObject.list[0].weather[0].icon+".png"
            image1.source="http://openweathermap.org/img/w/"+JsonObject.list[1].weather[0].icon+".png"
            image2.source="http://openweathermap.org/img/w/"+JsonObject.list[2].weather[0].icon+".png"
            image3.source="http://openweathermap.org/img/w/"+JsonObject.list[3].weather[0].icon+".png"
            image4.source="http://openweathermap.org/img/w/"+JsonObject.list[4].weather[0].icon+".png"
                    min1.text=Number(JsonObject.list[0].temp.night)
                    min2.text=Number(JsonObject.list[1].temp.night)
                    min3.text=Number(JsonObject.list[2].temp.night)
                    min4.text=Number(JsonObject.list[3].temp.night)
                    min5.text=Number(JsonObject.list[4].temp.night)
                         max1.text=Number(JsonObject.list[0].temp.day)
                         max2.text=Number(JsonObject.list[1].temp.day)
                         max3.text=Number(JsonObject.list[2].temp.day)
                         max4.text=Number(JsonObject.list[3].temp.day)
                         max5.text=Number(JsonObject.list[4].temp.day)
                            var date1=new Date(JsonObject.list[0].dt* 1000)
                            var date2=new Date(JsonObject.list[1].dt* 1000)
                            var date3=new Date(JsonObject.list[2].dt* 1000)
                            var date4=new Date(JsonObject.list[3].dt* 1000)
                            var date5=new Date(JsonObject.list[4].dt* 1000)
                            day1.text=date1.toUTCString().substring(0,2)
                            day2.text=date2.toUTCString().substring(0,2)
                            day3.text=date3.toUTCString().substring(0,2)
                            day4.text=date4.toUTCString().substring(0,2)
                            day5.text=date5.toUTCString().substring(0,2)
        }
    }
   }
