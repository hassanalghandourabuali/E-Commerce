import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
      super.initState();
      Future.delayed(
        Duration(seconds: 3),
            () {
          Navigator.pushReplacementNamed(context, '/onboardingscreen');
        },
      );
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff40bfff),
      body: Center(
        child: Container(
          child: Image(
            image: AssetImage(
              'images/img1.png',
            ),
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
