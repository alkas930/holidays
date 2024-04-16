import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_8/loginpage.dart';
import 'package:flutter_application_8/reg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 189, 247),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/pest.png",
                  scale: 1.8,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "Plantly",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Can't seem to keep a plant alive? \n   Let us help you change that ",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                child: Container(
                  height: 35,
                  width: size.width / 1.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 8, 137, 241)),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registered()),
                  );
                },
                child: Container(
                  width: size.width / 1.9,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(96, 10, 27, 255), width: 2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
