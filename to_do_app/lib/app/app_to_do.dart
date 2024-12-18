import 'package:flutter/material.dart';
import 'package:to_do_app/app/app_routs.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouts.dashBoardPage,
      routes: AppRouts.routes,
    );
  }
}
