import 'package:weather/weather/domain/repository/base_weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCountryName{
  final BaseWeatherRepository repository;
  GetWeatherByCountryName(this.repository);
  Future<Weather> execute(String cityName) async{
    return await repository.getWeatherByCitName(cityName);
  }
}