import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(start: 15, end: 150),
            child: Text(
              'OTP Verification',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 30, end: 150),
            child: Text(
              'Enter the verification code we just sent on your email address. ',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Pinput(
              defaultPinTheme: PinTheme(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      border: Border.all(color: Colors.black))),
              focusedPinTheme: PinTheme(
                  height: 70,
                  width: 70,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)))),
          SizedBox(height: 25,),
          Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: ElevatedButton(
                onPressed: () {Navigator.of(context).pushNamed('createpassword');},
                child: Text('Verify', style: TextStyle(fontSize: 25)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Didn’t received code ?'),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('register');
                  },
                  child: Text('Resend'))
            ],
          )
        ],
      )),
    );
  }
}
