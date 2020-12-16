import 'package:flutter/material.dart';
import 'package:mtechtutorial/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
    );
  }
}
