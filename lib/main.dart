import 'package:bmi_calculator/screens/routes_screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          centerTitle: true,
        ),
      ),
    );
  }
}
