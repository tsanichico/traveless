import 'dart:async';
import 'package:flutter/material.dart';
import 'package:traveless/ui/screens/home_screen.dart';
import 'package:traveless/utils/app_color.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            'assets/logo.png',
            width: 200,
            height: 70,
          ),
        ),
      ),
    );
  }
}
