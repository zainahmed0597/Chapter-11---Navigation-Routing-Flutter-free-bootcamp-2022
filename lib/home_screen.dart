import 'package:chapter11_navigation_routing/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                // Navigator.push(context,MaterialPageRoute(builder: (context) => ScreenTwo(name: "Asif Taj",num: 12,)));
                Navigator.pushNamed(context, ScreenTwo.id,
                    arguments: {'name': 'Asif Taj', 'age': 25});
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue),
                child: const Center(
                  child: Text('Screen 1'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
