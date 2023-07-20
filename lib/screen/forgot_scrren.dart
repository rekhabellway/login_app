import 'package:flutter/material.dart';
import 'package:login_app/screen/reset_password_screen.dart';
import 'package:login_app/screen/widget/button.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        body: ListView(
          children:[ Container(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
              child: Image.asset('assets/images/img_3.png',fit: BoxFit.cover,
                height: 350,
              )
          ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Forgot\nPassword?",
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
                        hintText: 'Email Id/Mobile number'
                    ),
                  ),
                  SizedBox(height: 20,),


                ],
              ),
            ),

            Button(title: "Submit", onTap: (){
              Navigator.push(context,
             MaterialPageRoute(builder: (context) => ResetPasswordScreen()
             )
              );
            },)





          ],
        ),
      ),
    );
  }
}
