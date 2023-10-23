// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:learnup/pages/signin.dart';

// ignore: use_key_in_widget_constructors
class LogoWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SignInPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 189.0,
                  height: 185.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(46.0),
                    image: DecorationImage(
                      image: AssetImage('assets/logo.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  "LearnUP",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Kodchasan',
                    fontSize: 25.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
