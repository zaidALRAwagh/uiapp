import 'package:flutter/material.dart';
import 'package:uiapp/screen/createpassword.dart';
import 'package:uiapp/screen/forgetpassword.dart';
import 'package:uiapp/screen/login.dart';
import 'package:uiapp/screen/otpscreen.dart';
import 'package:uiapp/screen/passwordcreated.dart';
import 'package:uiapp/screen/register.dart';
import 'package:uiapp/welcomesscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
        routes: {
          'welcomescreen': (context) => WelcomeScreen(),
          'login': (context) => Login(),
          'register': (context) => Register(),
          'forgetpassword': (context) => ForgetPassWord(),
          'otpscreen': (context) => OTPScreen(),
          'createpassword': (context) => CreatePassWordScreen(),
          'passwordcreated': (context) => PassWordCreatedScreen(),
        });
  }
}
