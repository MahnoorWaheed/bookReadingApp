// ignore_for_file: file_names

import 'package:bookapp/models/usermodel.dart';
import 'package:bookapp/screens/home.dart';
import 'package:bookapp/screens/splash.dart';
import 'package:bookapp/screens/widgetshome/bookcover.dart';
import 'package:flutter/material.dart';

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     routes: {
        "/": (context) {
          return Splash();
        },
        "/home": (context) {
          return Home();
        },
    
      },
    );
  }
}
