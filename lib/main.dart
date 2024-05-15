import 'package:flutter/material.dart';
import 'package:lessons_35/pages/home_pages.dart';
import 'package:lessons_35/tic_tak_toe/tic_tak_toe.dart';
void main(){
  runApp(MyScreenApp());
}

class MyScreenApp extends StatelessWidget {
  const MyScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GamePage(),
    );
  }
}
