import 'package:doubt_assignment/homepage.dart';
import 'package:doubt_assignment/second.dart';
import 'package:doubt_assignment/third.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String name = "User";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': ((context) => HomePage(name)),
        '/secondpage': (context) => SecondPage(),
        '/thirdpage': (context) => ThirdPage(name),
      },
    );
  }
}
