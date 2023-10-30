import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'login.dart';


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
  
  static inputStyle(String s, String t) {}
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }

  Widget content(){
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.elliptical(80, 80),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Image.asset(
                  "assets/logo.png",
                  height: 200,
                  width: 200),
              ),
              Text(
                "Register", 
                style: TextStyle(fontSize: 30),)
              ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        inputStyle("Username              ", "faradishaldina"),
        inputStyle("Password              ", "10April2003."),
        inputStyle("Location                ", "Malang"),
        inputStyle("Telephone             ", "085816681351"),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 60,
          width: 200, 
          decoration: BoxDecoration(
            color: Colors.pinkAccent, 
            borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: (){}, 
              child: Text(
                "Register", 
                style: TextStyle(fontSize: 20, color: Colors.white)
                ),
              ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 60,
          width: 200, 
          decoration: BoxDecoration(
            color: Colors.pinkAccent, 
            borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              child: Text(
                "Back to Login", 
                style: TextStyle(fontSize: 20, color: Colors.white)
                ),
              ),
        ),
      ],
    );
  }
}