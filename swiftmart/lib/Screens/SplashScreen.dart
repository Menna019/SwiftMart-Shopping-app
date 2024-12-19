// ignore_for_file: prefer_const_constructors, file_names, annotate_overrides

import 'package:flutter/material.dart';
import 'package:swiftmart/Screens/SignIn%20screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5) ,(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen()
      ));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color.fromRGBO(255, 115, 0, 1),
    body:Padding(
      padding: const EdgeInsets.only(top: 260,left: 0),
      child: Column(
      children: [
      Image.asset("assets/shopping logo.png"),
      SizedBox(height: 20,),
      const CircularProgressIndicator(
      color: Colors.black,
      )
      ],
      
      ),
    ),
  
    );
  }
}