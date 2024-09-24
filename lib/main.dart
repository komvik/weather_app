import 'package:flutter/material.dart';
import 'package:weather_app/weather_app.dart';
import 'package:weather_app/wether_kf.dart';

void main() {
  final WetherKF wetherkf = WetherKF(
    city: "Kaufbeuren",
    temperatur: 18,
    wetherstate: "Wind",
  );

  runApp(MainApp(wetherkf: wetherkf));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.wetherkf});

  final WetherKF wetherkf;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(wetherkf: wetherkf),
    );
  }
}
