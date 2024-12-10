import 'package:flutter/material.dart';
import 'package:to_do_app/pages/login_page.dart';
import 'package:to_do_app/pages/main_page.dart';
import 'package:to_do_app/pages/register_page.dart';



abstract class AppRouts {
  static const mainPage = 'main';
  static const registerPage = 'register';
  static const loginPage = 'login';

  static Map<String, WidgetBuilder> routes = {
    mainPage: (context) => const MainPage(),
    registerPage: (context) => const RegisterPage(),
    loginPage:(context) => const LoginPage(),
  };
}
