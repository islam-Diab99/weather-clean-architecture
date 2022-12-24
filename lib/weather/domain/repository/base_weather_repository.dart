import 'package:weather/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository{

Future<Weather> getWeatherByCitName(String cityName);

}