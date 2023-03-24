import 'package:feira/Pages/check.dart';
import 'package:feira/Pages/home.dart';
import 'package:flutter/material.dart';
import 'Pages/mango.dart';

Map<String, WidgetBuilder> routes = {
  AppRoutes.homeScreen: (context) => const Home(),
  AppRoutes.mangoScreen: (context) => const Mango(),
  AppRoutes.checkScreen: (context) => const Check(),
};

class AppRoutes {
  static const String homeScreen = "/";
  static const String mangoScreen = "/home";
  static const String checkScreen = "/check";
}
