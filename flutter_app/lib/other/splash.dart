import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/main.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Subjects()));
    });
    return Scaffold(
      backgroundColor: Colors.purple[400],
      body: Center(
        child: Container(
          color: Colors.purple[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Column(
              children: [
                Image.asset(
                    './textures/icon.png'
                ),



              ],
            ),
            Text('created by EcsFlash & Maxim Samsonov\n')
            ],
          ),
        )
      ),
    );
  }
}


