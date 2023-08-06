import 'package:flutter/material.dart';

class PassWordCreatedScreen extends StatefulWidget {
  const PassWordCreatedScreen({super.key});

  @override
  State<PassWordCreatedScreen> createState() => _PassWordCreatedScreenState();
}

class _PassWordCreatedScreenState extends State<PassWordCreatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/tick.png'),
          ),
          SizedBox(height: 25,),
          Container(
            child: Text(
              'Password Changed!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Text(
              'Your password has been\n changed successfully.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          SizedBox(height: 25,),
          Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: ElevatedButton(
                onPressed: () {Navigator.of(context).pushNamed('login');},
                child: Text('Back to Login', style: TextStyle(fontSize: 25)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )),
        ],
      )),
    );
  }
}
