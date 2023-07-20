import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_app/screen/forgot_scrren.dart';
import 'package:login_app/screen/widget/button.dart';

import 'otp_screen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        body: ListView(
            children:[ Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
                child: Image.asset('assets/images/img_1.png',fit: BoxFit.cover,
                  height: 350,
                )
            ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Login",
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
                      obscureText: true,
                      decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        icon:  Icon(Icons.lock,  color: Colors.black,),
                        hintText: 'Password',
                      ),),
                  ],
                ),
              ),


              Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                   children: [
                     TextButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>  const ForgotScreen()),
                           );
                         },
                         child: const Text("Forgot Password"))
                   ],
                ),

              Button(title: "Login", onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OtpScreen()),
              );}),


              const SizedBox(height: 10,),
       const Center(
             child: Text("Or")
            ),

              Center(
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                    onTap: () {},
                    child: Container(
                      width: 320,
                      height: 44,
                      color: const Color(0xfff1f1ff),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/img_2.png",height: 30,
                          ),
                          const SizedBox(width: 15,),
                          const Text('Login with Google'),
                        ],
                      ),
                    ),
                  ),
                ),

              Container(
                  padding: const EdgeInsets.only(left: 130,  top: 20, ),
                  child: RichText(
                    text:  const TextSpan(
                        text: "New to Logistics? ",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = () {
                              //     Navigator.push(
                              //       context,
                              //       MaterialPageRoute(builder: (context) =>  ForgotScreen()),
                              //     );
                              //   },
                              text:" Register ",
                              style:  TextStyle(color: Colors.lightBlue,)),
                        ]
                    ),
                  )

              ),
                    ],
                    ),
    );

  }
}
