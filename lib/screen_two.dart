import 'package:chapter11_navigation_routing/utils/routes_name.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  dynamic data;

  ScreenTwo({Key? key, required this.data}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.data['Node']), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenThree);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.yellow),
                child: const Center(
                  child: Text('Screen 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
