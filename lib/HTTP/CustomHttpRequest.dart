import 'package:http/http.dart' as http;

Future<Map<String,dynamic>> CurrentResponse()async {
  final response = await http.get(Uri.parse("http://api.weatherapi.com/v1/forecast.json?key=31a0fa77dd034d71a4241018250508&days=10&aqi=yes&q={{pali}}"));
  if(response.statusCode == 200){
    Map<String, Map<String, dynamic>> created= {};
    final data = jsonDecode(response.body);
    created.addAll({
      "details":{
        "city":data["location"]["name"].toString(),
        "state":data["location"]["region"].toString(),
        "country":data["location"]["country"].toString(),
      },
      "current_day":{
        "day_temp":data["current"]["temp_c"].toString(),
        "feels_like_temp":data["current"]   ["feelslike_c"].toString(),
        "wind_speed":data["current"]["wind_kph"].toString(),
        "condition_weather":data["current"]["condition"]["text"].toString(),
        "condition_image":data["current"]["condition"]["icon"].toString(),
        "pressure":data["current"]["pressure_in"].toString(),
        "uv_index":data["current"]["uv"].toString(),
       
        "hourly":[
          {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][0]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][0]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][0]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][0]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][1]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][1]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][1]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][1]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][2]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][2]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][2]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][2]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][3]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][3]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][3]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][3]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][4]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][4]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][4]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][4]["condition"]["text"].toString(),
            
          },
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][5]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][5]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][5]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][5]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][6]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][6]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][7]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][7]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][7]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][7]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][7]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][7]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][8]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][8]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][8]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][8]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][9]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][9]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][9]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][9]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][10]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][10]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][10]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][10]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][11]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][11]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][11]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][11]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][12]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][12]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][12]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][12]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][13]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][13]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][13]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][13]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][14]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][14]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][14]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][14]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][15]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][15]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][15]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][15]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][16]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][16]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][16]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][16]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][17]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][17]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][17]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][17]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][18]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][18]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][18]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][18]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][19]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][19]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][19]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][19]["condition"]["text"].toString(),
            
          },
          
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][20]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][20]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][20]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][20]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][21]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][21]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][21]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][21]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][22]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][22]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][22]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][22]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][0]["hour"][23]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][0]["hour"][23]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][0]["hour"][23]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][0]["hour"][23]["condition"]["text"].toString(),
            
          },
          
          
          
        ],
        
        "sunrise":data["forecast"]["forecastday"][0]["astro"]["sunrise"].toString(),
        "sunset":data["forecast"]["forecastday"][0]["astro"]["sunset"].toString(),
        
        
         },
     
      
      "next_day":{
        "day_temp":data["forecast"]["forecastday"][1]["day"]["avgtemp_c"].toString(),
        "feels_like_temp":data["forecast"]["forecastday"][1]["day"]["avghumidity"].toString(),
        "wind_speed":data["forecast"]["forecastday"][1]["day"]["maxwind_kph"].toString(),
        "condition_weather":data["forecast"]["forecastday"][1]["day"]["condition"]["text"].toString(),
        "condition_image":data["forecast"]["forecastday"][1]["day"]["condition"]["icon"].toString(),
        "chances_of_rain":data["forecast"]["forecastday"][1]["day"]["daily_chance_of_rain"].toString(),
        "uv_index":data["forecast"]["forecastday"][1]["day"]["uv"].toString(),
        "visiblity":data["forecast"]["forecastday"][1]["day"]["avgvis_km"].toString(),
       
        "hourly":[
          {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][0]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][0]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][0]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][0]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][1]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][1]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][1]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][1]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][2]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][2]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][2]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][2]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][3]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][3]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][3]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][3]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][4]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][4]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][4]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][4]["condition"]["text"].toString(),
            
          },
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][5]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][5]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][5]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][5]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][6]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][6]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][7]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][7]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][7]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][7]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][7]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][7]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][8]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][8]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][8]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][8]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][9]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][9]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][9]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][9]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][10]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][10]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][10]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][10]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][11]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][11]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][11]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][11]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][12]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][12]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][12]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][12]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][13]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][13]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][13]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][13]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][14]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][14]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][14]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][14]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][15]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][15]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][15]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][15]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][16]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][16]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][16]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][16]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][17]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][17]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][17]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][17]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][18]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][18]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][18]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][18]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][19]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][19]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][19]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][19]["condition"]["text"].toString(),
            
          },
          
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][20]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][20]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][20]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][20]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][21]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][21]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][21]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][21]["condition"]["text"].toString(),
            
          },
          
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][22]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][22]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][22]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][22]["condition"]["text"].toString(),
            
          },
          
          
               {
            
            "hour":data["forecast"]["forecastday"][1]["hour"][23]       ["time"].toString(),
            "temp_c":data["forecast"]["forecastday"][1]["hour"][23]["temp_c"].toString(),
            "condition_image":data["forecast"]["forecastday"][1]["hour"][23]["condition"]["icon"].toString(),
             "condition_weather":data["forecast"]["forecastday"][1]["hour"][23]["condition"]["text"].toString(),
            
          },
          
          
          
        ],
        
        "sunrise":data["forecast"]["forecastday"][1]["astro"]["sunrise"].toString(),
        "sunset":data["forecast"]["forecastday"][1]["astro"]["sunset"].toString(),
        
        
         },
        

      
      "next_days_10":{
        "day": [
          {
            "date":data["forecast"]["forecastday"][0]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][0]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][0]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][0]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][0]["day"]["condition"]["icon"].toString(),
              
          },
          
          
                   {
            "date":data["forecast"]["forecastday"][1]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][1]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][1]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][1]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][1]["day"]["condition"]["icon"].toString(),
              
          },
          
          
                   {
            "date":data["forecast"]["forecastday"][2]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][2]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][2]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][2]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][2]["day"]["condition"]["icon"].toString(),
              
          },
          
          
                   {
            "date":data["forecast"]["forecastday"][3]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][3]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][3]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][3]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][3]["day"]["condition"]["icon"].toString(),
              
          },
          
          
                   {
            "date":data["forecast"]["forecastday"][4]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][4]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][4]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][4]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][4]["day"]["condition"]["icon"].toString(),
              
          },
          
          
                   {
            "date":data["forecast"]["forecastday"][5]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][5]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][5]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][5]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][5]["day"]["condition"]["icon"].toString(),
              
          },
          
          
                   {
            "date":data["forecast"]["forecastday"][6]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][6]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][6]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][6]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][6]["day"]["condition"]["icon"].toString(),
              
          },
          
          
                   {
            "date":data["forecast"]["forecastday"][7]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][7]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][7]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][7]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][7]["day"]["condition"]["icon"].toString(),
              
          },
          
          
                   {
            "date":data["forecast"]["forecastday"][8]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][8]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][8]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][8]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][8]["day"]["condition"]["icon"].toString(),
              
          },
          
          
                   {
            "date":data["forecast"]["forecastday"][9]["date"].toString(),
            "avarage_temp":data["forecast"]["forecastday"][9]["day"]["avgtemp_c"].toString(),
            "uv":data["forecast"]["forecastday"][9]["day"]["uv"].toString(),
            "day_condition_weather":data["forecast"]["forecastday"][9]["day"]["condition"]["text"].toString(),
        "day_condition_icon":data["forecast"]["forecastday"][9]["day"]["condition"]["icon"].toString(),
              
          },
        ], 

      }
    });
    print(response.body);
    return created;
  }else if(response.statusCode == 404){
    return {};
  }
  return {};
}

void main() async{
  await CurrentResponse();
}
