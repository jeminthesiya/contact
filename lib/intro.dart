import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({Key? key}) : super(key: key);

  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'HomeScreen');
    });
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/call.png",
              color: Colors.white,
            ),
            SizedBox(
              height: 50,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "C",
                    style: GoogleFonts.dancingScript(
                      fontSize: 70,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: "ontacts",
                    style: GoogleFonts.dancingScript(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: ' A',
                    style: GoogleFonts.dancingScript(
                      fontSize: 70,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: 'pp',
                    style: GoogleFonts.dancingScript(
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
