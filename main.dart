import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:snap/login/login_screen.dart';
import 'package:snap/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),

    );
  }


}