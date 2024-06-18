import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:real_weather_app/services/weather_api.dart';

class Coord {
  String name;
  double? lon;
  double? lat;
  final String apikey = '8aa58bda2ef3ef8ff66cb79d861e1e7e';

  Coord({required this.name});

  Future<void> get_name() async {
    try {
      final jsonsp = await http.get(Uri.parse(
          'https://api.openweathermap.org/geo/1.0/direct?q=$name&limit=5&appid=$apikey'));
      List Data = jsonDecode(jsonsp.body);
      lat = Data[0]['lat'];
      lon = Data[0]['lon'];
      print('cooord $lat $lon');
    } catch (e) {
      print('Couldnt get location');
    }
  }
}
