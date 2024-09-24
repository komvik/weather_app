import 'package:flutter/material.dart';
import 'package:weather_app/wether_kf.dart';

class WeatherApp extends StatelessWidget {
  WeatherApp({super.key, required this.wetherkf});

  WetherKF wetherkf;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Wether App",
            style: TextStyle(color: Colors.blue, fontSize: 24),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Willkommen zur Wetter-App",
                style: TextStyle(color: Colors.blue, fontSize: 24),
              ),
              Text(
                wetherkf.city,
                style: const TextStyle(color: Colors.blue, fontSize: 24),
              ),
              Text(
                "Temp: ${wetherkf.temperatur} C",
                style: const TextStyle(color: Colors.blue, fontSize: 24),
              ),
              Text(
                wetherkf.wetherstate,
                style: const TextStyle(color: Colors.blue, fontSize: 24),
              ),
            ],
          ),
        ));
  }
}
