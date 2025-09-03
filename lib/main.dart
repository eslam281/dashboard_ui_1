
import 'package:dashboard_ui_1/prestation/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'core/const/constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard UI',
      theme: ThemeData(
       scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.dark
      ),
      home: const MainScreen(),
    );
  }
}