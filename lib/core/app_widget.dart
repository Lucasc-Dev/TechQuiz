import 'package:TechQuiz/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TechQuiz",
      home: HomePage(),
    );
  }
}
