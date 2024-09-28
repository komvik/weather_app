import 'package:flutter/material.dart';

import 'package:weather_app/weather_app.dart';
import 'package:weather_app/weather_repository.dart';

void main() {
  WeatherRepository weatherRepository = WeatherRepository();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: WeatherApp());
  }
}
