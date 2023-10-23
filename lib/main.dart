// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:learnup/firebase_options.dart';
import 'package:learnup/pages/book.dart';
import 'package:learnup/pages/bookview.dart';
import 'package:learnup/pages/community.dart';
import 'package:learnup/pages/communitysharing.dart';
import 'package:learnup/pages/home.dart';
import 'package:learnup/pages/join_community.dart';
import 'package:learnup/pages/logo.dart';
import 'package:learnup/pages/pdf.dart';
import 'package:learnup/pages/profile.dart';
import 'package:learnup/pages/register.dart';
import 'package:learnup/pages/signin.dart';
import 'package:learnup/pages/sharing.dart';
import 'package:learnup/pages/view_pdf.dart';
import 'package:learnup/pages/pdfview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


// G:\Flutter\LearnUP\home\build\windows