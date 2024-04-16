import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myhotel extends StatefulWidget {
  const myhotel({super.key});

  @override
  State<myhotel> createState() => _myhotelState();
}

class _myhotelState extends State<myhotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("images"), Image.asset("assets/vintage3.jpg")],
      ),
    );
  }
}
