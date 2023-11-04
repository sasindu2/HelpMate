// ignore_for_file: constant_pattern_never_matches_value_type


import 'package:flutter/material.dart';
import 'package:helpmate/pages/Home.dart';
import 'package:helpmate/pages/home_page.dart';
import 'package:helpmate/pages/splash.dart';
import 'package:helpmate/pages/Profile_Edit.dart';

import '../pages/login_page.dart';
import '../pages/register_page.dart';

class RouteManager {
  static const String splash = '/';
  static const String loginPage = '/loginPage';
  static const String registerPage = '/registerPage';
  static const String homePage = '/homePage';
  static const String homeProfile = '/homeProfile';
  static const String profileEdit = '/profileEdit';

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

      //home Profile
      case homeProfile:
        return MaterialPageRoute(builder: (context) => const EditProfileUI());

      //Profile Edit
      case profileEdit:
        return MaterialPageRoute(builder: (context) => const ProfileEditUI());

      default:
        throw Exception("No route found!");
    }
  }
}
