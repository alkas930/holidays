import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_8/main.dart';
import 'package:flutter_application_8/utils/image.dart';

class project extends StatefulWidget {
  const project({super.key});

  @override
  State<project> createState() => _projectState();
}

class _projectState extends State<project> {
  var arrcolor = [Colors.lime, Colors.blue, Colors.orange];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Project'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discover",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    child: Image.asset("assets/download.png"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 70,
                    width: size.width * .9,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: "search Product ",
                            suffix: Icon(Icons.search)),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(122, 255, 249, 249),
                        borderRadius: BorderRadius.circular(10)),
                    width: 40,
                    height: 40,
                    child: Icon(Icons.ad_units),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
              // SingleChildScrollView(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //               color: Colors.yellow,
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(20))),
              //           height: 450,
              //           width: 450,
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 "assets/Untitled.jpg",
              //                 height: 400,
              //                 width: 400,
              //               ),
              //               Text(
              //                 "Sofa",
              //                 style: TextStyle(
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 30),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //               color: Colors.purple,
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(20))),
              //           height: 450,
              //           width: 450,
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 "assets/tab.jpg",
              //                 height: 400,
              //                 width: 400,
              //               ),
              //               Text(
              //                 "Tablets",
              //                 style: TextStyle(
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 30),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           decoration: BoxDecoration(
              //               color: Colors.blue,
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(20))),
              //           height: 450,
              //           width: 450,
              //           child: Column(
              //             children: [
              //               Image.asset(
              //                 "assets/lap.jpg",
              //                 height: 400,
              //                 width: 400,
              //               ),
              //               Text(
              //                 "Laptop",
              //                 style: TextStyle(
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 30),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // // SizedBox(
              //   width: 100,
              //   child: ListView.builder(
              //     itemCount: 5,
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     physics: AlwaysScrollableScrollPhysics(),
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           height: 100,
              //           color: Colors.amber,
              //           child: Center(child: Text('data')),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
              // SizedBox(
              //   height: 10,
              // ),
              SingleChildScrollView(
                child: SizedBox(
                  height: size.height * .3,
                  // width: 200,
                  child: ListView.builder(
                      itemCount: 15,
                      shrinkWrap: true,
                      physics: AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => project()));
                            },
                            child: Container(
                                height: 20,
                                color: Colors.amber,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Image.asset(downloadImg)],
                                )),
                          ),
                        );
                      }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
              SizedBox(
                height: 10,
              ),

              myList()
            ],
          ),
        ),
      ),
    );
    // Widget buildCard()=>Container(width: 200,height: 200,color: Colors.blue.red,);
  }

  Widget myList() {
    return SizedBox(
      height: 250,
      // width: ,
      child: GridView.builder(
          itemCount: 5,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  // height: 100,
                  color: Colors.amber,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(downloadImg),
                      ),
                      Text(
                        'data',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
            );
          }),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
