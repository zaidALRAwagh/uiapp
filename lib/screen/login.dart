import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
        children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsetsDirectional.only(end: 120),
              child: Text(
                'Welcome back! Glad \n to see you, Again!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 25,
            ),
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Enter your PasWord',
                    suffixIcon: Icon(Icons.visibility),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(start: 240),
              child: TextButton(
                  onPressed: () {Navigator.of(context).pushNamed('forgetpassword');},
                  child: Text(
                    'Forget PassWord?',
                    style: TextStyle(color: Colors.black),
                  )),
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
                  child: Text('Login', style: TextStyle(fontSize: 25)),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                )),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Divider(thickness: 2, indent: 5, endIndent: 5),
                    flex: 2),
                Expanded(child: Text(' Or Login with ')),
                Expanded(
                  child: Divider(thickness: 2, indent: 5, endIndent: 5),
                  flex: 2,
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
                Text('Don`t have an account ?'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('register');
                      },
                    child: Text('Register Now'))
              ],
            )
        ],
      ),
          )),
    );
  }
}
