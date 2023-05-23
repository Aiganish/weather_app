import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/modules/home/view/home_view.dart';
import 'package:weather_app/modules/search/view/search_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
