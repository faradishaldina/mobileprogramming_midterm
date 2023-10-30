import 'package:flutter/material.dart';
import 'package:midterm_faradisha_ti3i/login.dart';
import 'package:midterm_faradisha_ti3i/register.dart';
import 'package:midterm_faradisha_ti3i/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => Splash(),
      '/login': (context) => Login(),
      '/register' : (context) => Register(),
    },
  ));
}

