import 'package:flutter/material.dart';
import 'package:weather_app/weather_data.dart';
import 'package:weather_app/weather_app.dart';

void main() {
  WeatherKF weatherkf = WeatherKF(
    city: "Kaufbeuren",
    temperatur: 17,
    wetherstate: "Wind",
  );

  runApp(MainApp(weatherkf: weatherkf));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.weatherkf});

  final WeatherKF weatherkf;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(weatherkf: weatherkf),
    );
  }
}
