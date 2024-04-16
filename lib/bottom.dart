import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/holidays.dart';
import 'package:flutter_application_8/profile.dart';
import 'package:flutter_application_8/categories.dart';

class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  int selectedIndex = 0;
  void ontapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List pages = [holidays(), categories(), profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          onTap: ontapped,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Categories"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
          ],
        ));
  }
}
