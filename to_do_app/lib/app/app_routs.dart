import 'package:flutter/material.dart';
import 'package:to_do_app/pages/main_page.dart';

abstract class AppRouts {
  static const mainPage = 'main';

  static Map<String, WidgetBuilder> routes = {
    mainPage: (context) => const MainPage(),
  };
}
