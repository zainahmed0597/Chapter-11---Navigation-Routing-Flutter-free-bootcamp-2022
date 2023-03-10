import 'package:chapter11_navigation_routing/screen_three.dart';
import 'package:chapter11_navigation_routing/screen_two.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chapter 11',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id : (context) => HomeScreen(),
        ScreenTwo.id : (context) => ScreenTwo(),
        ScreenThree.id : (context) => ScreenThree(name: '', number: 1),
      },
    );
  }
}
