import 'package:flutter/material.dart';
import 'package:todo_app/styles/app_themes.dart';
import 'package:todo_app/home_layout/home_layout.dart';
import 'package:todo_app/splash_screen/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeLayout.routeName :(context) => HomeLayout(),
      },
      initialRoute: SplashScreen.routeName,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
