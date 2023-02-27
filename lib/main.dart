import 'package:contact/HomeScreen.dart';
import 'package:contact/add.dart';
import 'package:contact/intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      routes: {
        '/':(context) => Splash_Page(),
        'HomeScreen':(context) => HomeScreen(),
        'Add':(context) => Add(),
      },
    ),
  );
}
