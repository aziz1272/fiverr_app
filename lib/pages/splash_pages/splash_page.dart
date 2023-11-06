import 'package:fiverr_app/pages/bottom_nav_bar_pages/bottom_nav_bar.dart';
import 'package:fiverr_app/pages/intro_pages/intro.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const String id = "splash_page";

  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed( const Duration(seconds: 2),(){
     Navigator.pushReplacementNamed(context, Intro.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              "fiverr",
              style: TextStyle(
                color: Colors.green[900],
                fontSize: 60,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150,bottom:5),
              child: Text(
                ".",
                style: TextStyle(
                  color: Colors.greenAccent[700],
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
