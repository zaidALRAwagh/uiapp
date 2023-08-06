import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image(
              image: AssetImage('images/img-3.png'),
              width: double.infinity,
              fit: BoxFit.contain,
            ),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage('images/logo.png')),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('login');
                },
                child: Text('LOGIN'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('register');
                },
                child: Text('Register', style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
              ),
            ),
            Spacer(),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Continue as a quest',
                  style: TextStyle(color: Colors.green.shade400),
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
