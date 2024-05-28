import 'package:coffee/Screens/HomePage.dart';
import 'package:coffee/Screens/Loginpage.dart';
//import 'package:coffee/Screens/listview.dart';
import 'package:coffee/Screens/SplashScreen.dart';
// import 'package:coffee/Screens/Paymentscreen.dart';
// // import 'package:coffee/Screens/addtocart.dart';
// // import 'package:coffee/Screens/listview.dart';
// import 'package:coffee/Screens/beansdetailed.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}








