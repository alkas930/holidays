import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/utils/image.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  List cat = [lap, scooter, gift, grocery, sofa, tab];
  List title = [
    "Electronics",
    "bike",
    "gifts",
    "grocery",
    "furniture",
    "mobiles"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All catagories"),
        actions: [Icon(Icons.search), Icon(Icons.mic)],
      ),
      body: ListView.builder(
        itemCount: cat.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 110,
                      width: 100,
                      color: Color.fromARGB(255, 235, 232, 223),
                      child: Column(
                        children: [Image.asset(cat[index]), Text(title[index])],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
