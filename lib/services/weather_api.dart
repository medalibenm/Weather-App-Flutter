import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class Weather {
  late String name;
  double? lon;
  double? lat;
  String? apikey;

  String description = '';
  double temp = 0.0;
  double maxtemp = 0.0;
  double mintemp = 0.0;
  int humidity = 0;
  int clouds = 0;
  double windSpeed = 0.0;

  // late String hour1;
  // late int hour1Temp;
  // late String hour2;
  // late int hour2Temp;
  // late String hour3;
  // late int hour3Temp;
  // late String hour4;
  // late int hour4Temp;

  // late String day1;
  // late int tempDay1;
  // late int tempDay1Grey;
  // late String day2;
  // late int tempDay2;
  // late int tempDay2Grey;

  Weather({required this.name, this.lat, this.lon, this.apikey});

  Future<void> get_weather() async {
    try {
      print('$lon $lat');
      final jsonWeather = await http.get(Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&appid=$apikey&units=metric'));
      Map weatherData = jsonDecode(jsonWeather.body);
      description = weatherData['list'][0]['weather'][0]['main'];
      temp = weatherData['list'][0]['main']['temp'];
      maxtemp = weatherData['list'][0]['main']['temp_min'];
      mintemp = weatherData['list'][0]['main']['temp_max'];
      humidity = weatherData['list'][0]['main']['humidity'];
      clouds = weatherData['list'][0]['clouds']['all'];
      windSpeed = weatherData['list'][0]['wind']['speed'];



      String time = DateFormat().format(DateTime.now());
      print('$windSpeed in $name');
      print('$time');
    } catch (e) {
      print('couldnt get weather data');
    }
  }
}
