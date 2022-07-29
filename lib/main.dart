import 'package:flutter/material.dart';
import 'package:bmi/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'BMI Calculator',
      // Application theme data, you can set the colors for the application as
      // you want
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow, visualDensity: VisualDensity.adaptivePlatformDensity),
      // A widget which will be started on application startup
      home: HomeScreen(),
    );
  }
}
