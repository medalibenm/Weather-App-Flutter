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
  bool isDayTime = true;

  String month = DateFormat.d().format(DateTime.now());
  String day = DateFormat.MMMM().format(DateTime.now());

  late String hour1 = '';
  double hour1Temp = 0.0;
  late String hour2 = '';
  double hour2Temp = 0.0;
  late String hour3 = '';
  double hour3Temp = 0.0;
  late String hour4 = '';
  double hour4Temp = 0.0;


  int i = 0;
  late String day1 =
      DateFormat.EEEE().format(DateTime.now().add(Duration(days: 1)));
  late double tempDay1 = 0.0;
  late String day2 =
      DateFormat.EEEE().format(DateTime.now().add(Duration(days: 2)));
  late double tempDay2 = 0.0;
  

  Weather({required this.name, this.lat, this.lon, this.apikey});

  Future<void> get_weather() async {
    try {
      print('krkr $lon $lat');
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

      hour1 = DateFormat.Hm()
          .format(DateTime.parse(weatherData['list'][0]['dt_txt']));
      hour2 = DateFormat.Hm()
          .format(DateTime.parse(weatherData['list'][1]['dt_txt']));
      hour3 = DateFormat.Hm()
          .format(DateTime.parse(weatherData['list'][2]['dt_txt']));
      hour4 = DateFormat.Hm()
          .format(DateTime.parse(weatherData['list'][3]['dt_txt']));

      hour1Temp = weatherData['list'][0]['main']['temp'];
      hour2Temp = weatherData['list'][1]['main']['temp'];
      hour3Temp = weatherData['list'][2]['main']['temp'];
      hour4Temp = weatherData['list'][3]['main']['temp'];

      while (day1 !=
          DateFormat.EEEE()
              .format(DateTime.parse(weatherData['list'][i]['dt_txt']))) {
        i += 1;
      }
      tempDay1 = weatherData['list'][i]['main']['temp'];
      while (day2 !=
          DateFormat.EEEE()
              .format(DateTime.parse(weatherData['list'][i]['dt_txt']))) {
        i += 1;
      }
      tempDay2 = weatherData['list'][i]['main']['temp'];

      isDayTime = int.parse(hour1.substring(0, 1)) > 6 && int.parse(hour1.substring(0, 1)) < 20 ? true : false;

      print('$windSpeed in $name');
      print('now is $hour1   $month  $day $description $isDayTime');
    } catch (e) {
      print('couldnt get weather data $e');

    }
  }
}
