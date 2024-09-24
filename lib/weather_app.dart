import 'package:flutter/material.dart';
import 'package:weather_app/weather_data.dart';
import 'package:weather_app/weather_repository.dart';

class WeatherApp extends StatelessWidget {
  WeatherApp({super.key, required this.repository});

  WeatherRepository repository;
  @override
  Widget build(BuildContext context) {
    WeatherKF weatherkf = WeatherRepository().getWeatherRepository();

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Wether App",
            style:
                TextStyle(color: Color.fromARGB(255, 3, 88, 159), fontSize: 24),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Willkommen zur Wetter-App",
                    style: TextStyle(
                        color: Colors.blue.withOpacity(0.5),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                weatherkf.city,
                style: const TextStyle(color: Colors.blue, fontSize: 20),
              ),
              Text(
                "Temp: ${weatherkf.temperatur} C",
                style: const TextStyle(color: Colors.blue, fontSize: 20),
              ),
              Text(
                weatherkf.wetherstate,
                style: const TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
