import 'package:weather_app/weather_data.dart';

class WeatherRepository {
  final WeatherKF _weatherKF = WeatherKF(
    city: "Kaufbeuren",
    temperatur: 16,
    wetherstate: "Wind",
  );
  WeatherKF getWeatherRepository() => _weatherKF;
}
