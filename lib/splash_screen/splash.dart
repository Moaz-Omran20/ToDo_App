import 'package:flutter/material.dart';
import 'package:todo_app/home_layout/home_layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),() => Navigator.pushReplacementNamed(
        context, HomeLayout.routeName),);
    return Scaffold(
      body: Image.asset("assets/images/splash.png"),
      backgroundColor: Color(0xFFDFECDB),
    );
  }
}
