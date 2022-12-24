import 'package:weather/weather/data/datasources/remote_datasource.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final BaseRemoteDataSource  baseRemoteDatasource;

  WeatherRepository(this.baseRemoteDatasource);
  @override
  Future<Weather> getWeatherByCitName(String cityName) async {
    return (await baseRemoteDatasource.getWeatherByCityName(cityName))!;
  }
  
}