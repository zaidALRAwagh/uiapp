import 'package:flutter/material.dart';

class ForgetPassWord extends StatefulWidget {
  const ForgetPassWord({super.key});

  @override
  State<ForgetPassWord> createState() => _ForgetPassWordState();
}

class _ForgetPassWordState extends State<ForgetPassWord> {
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
              'Forget PassWord ?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 30, end: 150),
            child: Text(
              'Dont worry! It occurs. Please enter the  email address linked with your account. ',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your Email',
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(height: 30,),
          Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: ElevatedButton(
                onPressed: () {Navigator.of(context).pushNamed('otpscreen');},
                child: Text('Send Code', style: TextStyle(fontSize: 25)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Remember Password? '),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('login');
                  },
                  child: Text('Login'))
            ],
          )
        ],
      )),
    );
  }
}
