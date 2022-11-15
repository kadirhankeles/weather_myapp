import 'dart:convert';
import 'dart:developer';
import 'package:geocoding/geocoding.dart';
import 'package:weather_myapp/screens/home_screen.dart';

import '../models/current_reader_response.dart';
import 'package:http/http.dart' as http;

Future<CurrentWeatherModel?> getCurrentData(String context) async {
  CurrentWeatherModel weatherModel;

  List<Location> locations = await locationFromAddress(context);
  print(locations);
  double lat = locations[0].latitude;
  double lon = locations[0].longitude;

  try {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=33a5bfc0e1e90e645d0ca3bb5ad1c70e"
        "&units=metric"));
    weatherModel = CurrentWeatherModel.fromJson(jsonDecode(response.body));
    print(response.body);
    return weatherModel;
  } catch (e) {
    log(e.toString());
  }
  return null;
}
