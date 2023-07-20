import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login_app/screen/bottom_bar.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children:[
            Container(
      padding:  EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 0),
        child: Image.asset('assets/images/img_5.png',fit: BoxFit.cover,
          height: 350,
        )
    ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text("Enter\nOTP",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                ],
              ),
            ),

   Container(
     child: OtpTextField(
    numberOfFields: 4,
    borderColor: Color(0xFF512DA8),
    keyboardType: TextInputType.number,
       showFieldAsBox: true,
    onCodeChanged: (String code) {
    },

    onSubmit: (String verificationCode){
    showDialog(
    context: context,
    builder: (context){
    return AlertDialog(
    title: Text("Verification OTP"),
    icon:  Icon(Icons.check_box_rounded,  color: Colors.lightGreen,),
    content:
         ElevatedButton(
    child: Text('OK'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  BottomBar()),
        );
      },
      ),
      semanticLabel: ('Successful $verificationCode'),
    );
    }
    );
    }, // end onSubmit
    ),
   )
    ],
    ),
    );

  }
}
