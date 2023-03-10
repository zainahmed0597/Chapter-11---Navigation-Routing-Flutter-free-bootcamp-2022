import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  final String name;
  final int number;

  const ScreenThree({Key? key,
    required this.name,
    required this.number,
  }) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen Three"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green),
                child: const Center(
                  child: Text('Screen 3'),
                ),
              ),
            ),
            SizedBox(height: 12,),
            Text(widget.name + " " + widget.number.toString()),
          ],
        ),
      ),
    );
  }
}
