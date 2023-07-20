import 'package:flutter/material.dart';

class SquareScreen extends StatelessWidget {
  const SquareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return  MaterialApp(
      home:   Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              height: 100,
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              height: 100,
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              height: 100,
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );

  }
}