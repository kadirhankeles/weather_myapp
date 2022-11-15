import 'package:flutter/cupertino.dart';
import 'package:weather_myapp/models/current_reader_response.dart';
import 'package:weather_myapp/models/hovercast_reader.dart';
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

  HovercastReader hresponse = HovercastReader();
  bool isLoadings = false;
  
  getDataHourly(context) async {
    isLoadings = true;
    hresponse = (await getHourlyData(context))!;
    isLoadings = false;
    notifyListeners();
  }
}
