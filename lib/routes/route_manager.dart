// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:flutter/material.dart';
import 'package:helpmate/pages/add_campaign.dart';
import 'package:helpmate/pages/home_page.dart';
import 'package:helpmate/pages/splash.dart';

import '../pages/login_page.dart';
import '../pages/register_page.dart';

class RouteManager {
  static const String splash = '/';
  static const String loginPage = '/loginPage';
  static const String registerPage = '/registerPage';
  static const String homePage = '/homePage';
  static const String addCampaignPage = '/addCampaignPage';

  static Route<dynamic>? onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      //route for splash page
      case splash:
        return MaterialPageRoute(
          builder: (context) => const Splash(),
        );

      //route for loginpage

      case loginPage:
        return MaterialPageRoute(builder: (context) => const LoginPage());

      //route for register page

      case registerPage:
        return MaterialPageRoute(builder: (context) => const RegisterPage());

      //home page
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());

      case addCampaignPage:
        return MaterialPageRoute(builder: (context) => AddCampaignPage());

      default:
        throw Exception("No route found!");
    }
  }
}
