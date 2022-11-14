import 'package:flutter/cupertino.dart';
import 'package:weather_myapp/models/current_reader_response.dart';
import 'package:weather_myapp/service/api_service.dart';

class WeatherProvider with ChangeNotifier {
  CurrentWeatherModel response = CurrentWeatherModel();
  bool isLoading = false;

  getWeatherData(context) async {
    isLoading = true;
    response = (await getCurrentData(context))!;
    isLoading = false;
    notifyListeners();
    //
  }
}
