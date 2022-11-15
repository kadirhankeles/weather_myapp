import 'dart:convert';
import 'dart:developer';
import 'package:geocoding/geocoding.dart';
import 'package:weather_myapp/screens/home_screen.dart';

import '../models/current_reader_response.dart';
import 'package:http/http.dart' as http;

import '../models/hovercast_reader.dart';

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
    //print(response.body);
    return weatherModel;
  } catch (e) {
    log(e.toString());
  }
  return null;
}

Future<HovercastReader?> getHourlyData(String context) async{
  HovercastReader hourlyModel;
  List<Location> locations = await locationFromAddress(context);
  double lat = locations[0].latitude;
  double lon = locations[0].longitude;
  try {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&appid=07de6e352cc77e781ec578c937639967"
        "&units=metric")); print(response.body);
    hourlyModel = HovercastReader.fromJson(jsonDecode(response.body));
   
    return hourlyModel;   
  } catch (e) {
    log(e.toString());
  }
  return null;

} 
