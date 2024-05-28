import 'dart:async';
import 'package:coffee/Screens/HomePage.dart';
import 'package:coffee/Screens/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

      Timer(Duration(seconds: 3), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
      });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 100,
        width: MediaQuery.of(context).size.width * 100,
        color: const Color.fromRGBO(12, 15, 20, 1),
        child: Lottie.asset('assets/lottiesAnimation/coffeecup.json'),
      ),
    );
  }
}
