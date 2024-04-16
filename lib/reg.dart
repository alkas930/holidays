import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/bottom.dart';
import 'package:flutter_application_8/holidays.dart';
import 'package:flutter_application_8/loginpage.dart';

class Registered extends StatefulWidget {
  const Registered({super.key});

  @override
  State<Registered> createState() => _RegisteredState();
}

class _RegisteredState extends State<Registered> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 188, 248),
      body: Center(
        child: Column(
          children: [
            Container(
                // height: size.height,
                // width: size.width,
                child: Image.asset("assets/leaf3.jpg")),
            SizedBox(height: 40),
            Text(
              "Register",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Create your account ",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 50),
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
                  hintText: "Email address",
                  prefixIcon: Icon(
                    Icons.mail,
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
            Container(
              width: size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 225, 233, 236),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue,
                  ),
                  hintStyle: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "By registering you are agreing to our \n terms of use and privacy policy",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => bottom()));
              },
              child: Container(
                height: 35,
                width: size.width / 1.9,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 8, 137, 241)),
                child: Center(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ?   ",
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "LOGIN ",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
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
    );
  }
}
