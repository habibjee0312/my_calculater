import 'package:flutter/material.dart';
import 'package:my_calculater/home_screen.dart';
import 'package:my_calculater/splesh_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'My app',
      home: SpleshScreen(),
    );
  }
}


