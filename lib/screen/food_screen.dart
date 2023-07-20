import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const FoodScreen());
}

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}






