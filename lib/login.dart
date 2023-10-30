import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            borderRadius:BorderRadius.only(
              bottomRight: Radius.elliptical(80, 80),
              ),
            ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Image.asset("assets/logo.png"),
          ),
          ),
        SizedBox(
          height: 60,
        ),
        inputStyle("Username", "Enter your username"),
        SizedBox(
          height: 20,),
        inputStyle("Password" , "Enter your password"),
        SizedBox(
          height: 60,
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
                "Login", 
                style: TextStyle(fontSize: 20, color: Colors.white)
                ),
              ),
        ),
        SizedBox(height: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Dont have an account?  ",
                style: TextStyle(fontSize: 15, color: Colors.black),

                ),
              TextSpan(
                text: "Register",
                style: TextStyle(fontSize: 15, color: Colors.purpleAccent[700]),
                recognizer: TapGestureRecognizer()
                ..onTap=(){
                  Navigator.of(context).pushNamed('/register');
                },
                ),
              
              
            ],
            ),
            )
      ],
      );
  }
}

Widget inputStyle(String title, String hinTxt){
  return Padding(
          padding: const EdgeInsets.fromLTRB(40, 5, 20, 10),
          child: Row(
            children: [
              Text("$title :", style: TextStyle(fontSize: 20)),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3) )
                        ]),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: hinTxt
                            ),
                          ), 
                        ),
              ),
            
            ],
          ),
        );

  
}