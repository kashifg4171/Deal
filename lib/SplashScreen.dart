
//import 'package:cylinder_delivery/SignIn.dart';
import 'package:flutter/material.dart';

import 'select_lang.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    
    Future.delayed(
      Duration(seconds: 3),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SelectLang()));
      }
    );

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/icons/splash_bg.png"),
            fit: BoxFit.fill,
        )),
       
      ),
      
    );
  }
}

