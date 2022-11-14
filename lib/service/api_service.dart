import 'dart:convert';
import 'dart:developer';

import '../models/current_reader_response.dart';
import 'package:http/http.dart' as http;

Future<CurrentWeatherModel?> getCurrentData(context) async {
  CurrentWeatherModel weatherModel;
  try {
    final response = await http.get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?lat=39.9486&lon=32.5812&appid=33a5bfc0e1e90e645d0ca3bb5ad1c70e"));
    weatherModel = CurrentWeatherModel.fromJson(jsonDecode(response.body));
    print(response.body);
    return weatherModel;
  } catch (e) {
    log(e.toString());
  }
  return null;
}
