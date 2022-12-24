import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/weather/core/utils/constants.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeatherByCityName(String countryName);

}
class RemoteDatasource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCityName(String cityName) async {
    try{
      var response= await Dio().get(''
          '${AppConstants.baseUrl}weather?q=$cityName&appid=${AppConstants.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);


    }
    catch(e){
      if (kDebugMode) {
        print(e);
      }
      return null;

    }

  }
}