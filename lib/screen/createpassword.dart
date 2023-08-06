import 'package:flutter/material.dart';

class CreatePassWordScreen extends StatefulWidget {
  const CreatePassWordScreen({super.key});

  @override
  State<CreatePassWordScreen> createState() => _CreatePassWordScreenState();
}

class _CreatePassWordScreenState extends State<CreatePassWordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 20, end: 100),
            child: Text(
              'Create new password',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsetsDirectional.only(start: 30, end: 100),
            child: Text(
              'Your new password must be unique from those previously used. ',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'PassWord',
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Confirm password',
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
              width: double.infinity,
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: ElevatedButton(
                onPressed: () {Navigator.of(context).pushNamed('passwordcreated');},
                child: Text('Reset Password', style: TextStyle(fontSize: 25)),
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
