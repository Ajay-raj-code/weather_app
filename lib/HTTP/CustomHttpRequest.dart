import 'package:http/http.dart' as http;

Future<Map<String,dynamic>> CurrentResponse()async {
  final response = await http.get(Uri.parse("http://api.weatherapi.com/v1/forecast.json?key=31a0fa77dd034d71a4241018250508&days=10&aqi=yes&q={{pali}}"));
  if(response.statusCode == 200){
    print(response.body);
    return {};
  }else if(response.statusCode == 404){
    return {};
  }
  return {};
}

void main() async{
  await CurrentResponse();
}