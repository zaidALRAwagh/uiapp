import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            margin: EdgeInsetsDirectional.only(end: 120),
            child: Text(
              'Hello! Register to get \n Started',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'User Name',
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
                  hintText: 'Email',
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
                onPressed: () {},
                child: Text('Register', style: TextStyle(fontSize: 25)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                  flex: 1),
              SizedBox(
                width: 25,
              ),
              Expanded(child: Text('Or Register with')),
              Expanded(
                child: Divider(
                  thickness: 2,
                ),
                flex: 1,
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.black12,
                        width: 2)),
                child: Image(
                  image: AssetImage('images/fb.png'),
                ),
              ),
              Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.black12,
                        width: 2)),
                child: Image(
                  image: AssetImage('images/google.png'),
                ),
              ),
              Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.black12,
                        width: 2)),
                child: Image(
                  image: AssetImage('images/apple.png'),
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Alredy have an account ?'),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('login');
                  },
                  child: Text('Login Now'))
            ],
          )
        ],
      )),
    );
  }
}
