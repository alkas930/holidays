import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewClass extends StatelessWidget {
  final int selectedIndex;

  final String ImagePath;

  const NewClass(
      {super.key, required this.selectedIndex, required this.ImagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New CLass'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(selectedIndex.toString())),
          Image.asset(ImagePath)
        ],
      ),
    );
  }
}
