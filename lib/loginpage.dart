import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_8/bottom.dart';
import 'package:flutter_application_8/holidays.dart';
import 'package:flutter_application_8/reg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _ischecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 189, 247),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: size.height / 4,
                width: size.width,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150)),
                ),
                child: Image.asset(
                  "assets/char.jpg",
                  fit: BoxFit.cover,
                  scale: 4,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Login to your account",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 45),
              Container(
                width: size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 225, 233, 236),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintStyle: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 225, 233, 236),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                    hintStyle: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            value: _ischecked,
                            onChanged: (newvalue) {
                              setState(() {
                                _ischecked = newvalue!;
                              });
                            }),
                        Text(
                          "Remember me",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Text(
                      "Forgot password",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(height: 100),
              Container(
                height: 35,
                width: size.width / 1.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 8, 137, 241)),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => bottom()));
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?   ",
                    style: TextStyle(color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registered()));
                    },
                    child: Text(
                      "SIGN UP ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
