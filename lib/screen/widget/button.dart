import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Function onTap;
  const Button({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Center(
          child: Container(
              width: 320,
              height: 63,
              padding: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                child:  Text(title),
                onPressed: () {
                 onTap();
                },
              )
          )
      );
  }
}
