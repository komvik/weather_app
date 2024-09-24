import 'package:flutter/material.dart';
import 'package:weather_app/weather_data.dart';
import 'dart:math';

class WeatherRepository {
  final List<WeatherKF> _weatherall = [
    WeatherKF(city: "Kaufbeuren", temperatur: 18, wetherstate: "Wind"),
    WeatherKF(city: "Osnabrück", temperatur: 15, wetherstate: "Rain"),
    WeatherKF(city: "Mindelcheim", temperatur: 18, wetherstate: "Sun"),
    WeatherKF(city: "München", temperatur: 16, wetherstate: "Wind")
  ];

  WeatherKF getWeatherRepository() {
    final random = Random();
    return _weatherall[random.nextInt(_weatherall.length)];
  }
}
