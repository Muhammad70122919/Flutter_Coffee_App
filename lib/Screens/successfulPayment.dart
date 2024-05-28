import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:coffee/Screens/Paymentscreen.dart';

class Paymentseccessfull extends StatefulWidget {
  const Paymentseccessfull({Key? key}) : super(key: key);

  @override
  State<Paymentseccessfull> createState() => _PaymentseccessfullState();
}

class _PaymentseccessfullState extends State<Paymentseccessfull>  {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const PaymentToPay()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: const Color.fromRGBO(12, 15, 20, 1),
          child: Lottie.asset('assets/lottiesAnimation/coffeecup.json'),
        ),
      ),
    );
  }
}
