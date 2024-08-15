import 'package:flutter/material.dart';
import 'package:login_design_ui/login_app/screens/welcom_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomScreen(),
    );
  }
}
