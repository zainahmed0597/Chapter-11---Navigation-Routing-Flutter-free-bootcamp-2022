import 'package:chapter11_navigation_routing/utils/routes.dart';
import 'package:chapter11_navigation_routing/utils/routes_name.dart';
import 'package:flutter/material.dart';


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
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
