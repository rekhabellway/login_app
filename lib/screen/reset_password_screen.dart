import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screen/widget/button.dart';

import 'otp_screen.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: ListView(
        children:[
          Container(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
            child: Image.asset('assets/images/img_4.png',fit: BoxFit.cover,
              height: 350,
            )
        ),
          Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Reset\nPassword?",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                ),),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),//<-- SEE HERE
                    ),
                    icon: Icon(Icons.lock,
                      color: Colors.black,),
                    hintText: 'New password'
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),//<-- SEE HERE
                    ),
                    icon: Icon(Icons.lock,
                      color: Colors.black,),
                    hintText: 'Confirm new password'
                ),
              ),
              SizedBox(height: 20,),
            ],
          ),
        ),
          Button(title: "Submitting", onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> OtpScreen()
            )
            );
          },)

        ],
      ),
    );
  }
}
