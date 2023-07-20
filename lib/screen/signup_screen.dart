import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screen/login_screen.dart';
import 'package:login_app/screen/otp_screen.dart';
import 'package:login_app/screen/widget/button.dart';

class SignupScreen extends StatelessWidget {


  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return   MaterialApp(
      home: Scaffold(
        body: ListView(
          children:[
            Container(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
            child: Image.asset('assets/images/img.png',fit: BoxFit.cover,
            height: 350,
           )
          ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Signup",
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
          icon: Icon(Icons.email,
          color: Colors.black,),
      hintText: 'Enter your mail abc@gmail.com'
                  ),
                  ),
                  SizedBox(height: 20,),

                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),//<-- SEE HERE
                      ),
                        icon:  Icon(Icons.person,  color: Colors.black,),
                        hintText: 'Enter your Full Name',
                      ),),
                  SizedBox(height: 20,),

                  TextField(
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),//<-- SEE HERE
                      ),
                            icon:  Icon(Icons.call,  color: Colors.black,),
                        hintText: 'Enter your mobile no.',
                    ),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20,  top: 20),
              child: RichText(
                text: const TextSpan(
                  text: "By signing up, you're argee to our ",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: " Terms & Conditions ",
                      style: TextStyle(color: Colors.lightBlue)),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(color: Colors.black)),
                    TextSpan(
                      text: " privacy policy ",
                      style: TextStyle(color: Colors.lightBlue)),
                  ]
                ),
              )

            ),
            Button(title: ("Sign Up"), onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
            }),

            Center(
              child: Container(
                  padding: const EdgeInsets.only(top:20),
                  margin: EdgeInsets.all(10),
                  child: RichText(
                  text:  TextSpan(children: [
                    const TextSpan(
                      text: "Joined us before?",
                      style: TextStyle(color: Colors.black),
                    ),
                       TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                    );
                  },
                        text:" Login ",
                      style: const TextStyle(color: Colors.lightBlue,)),
        ]
      )
      ),
            )
      ),
       ],
        ),
      ),
    );
  }
}

