import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_8/hotel.dart';
import 'package:flutter_application_8/newclass.dart';
import 'package:flutter_application_8/profile.dart';
import 'package:flutter_application_8/utils/String.dart';
import 'package:flutter_application_8/utils/ic.dart';
import 'package:flutter_application_8/utils/image.dart';

class holidays extends StatefulWidget {
  const holidays({super.key});

  @override
  State<holidays> createState() => _holidaysState();
}

class _holidaysState extends State<holidays> {
  List<String> pics = [vintage1, vintage2, vintage3, vintage4];
  List icons = [hotel, rest, train, flight, bus, home, hospital];
  List text = [hotell, restt, trainn, flightt, buss, homee, hospitall];
  List grid = [grid1, grid5, grid3, grid2, grid4, grid6];
  List grids = [
    "Goa , India",
    "Delhi , India",
    "Goa , India",
    "Delhi , India",
    "Goa , India",
    "Delhi , India"
  ];
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
          child: ListView(children: const [
        DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(159, 7, 164, 236)),
            child: CircleAvatar(
              child: Text(
                "AS",
                style: TextStyle(
                    color: Color.fromARGB(255, 10, 165, 226),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            )),
        Divider(
          color: Color.fromARGB(255, 156, 206, 247),
        ),
        ListTile(
          leading: Icon(Icons.photo),
          title: Text("All photos"),
        ),
        ListTile(
          leading: Icon(Icons.star),
          title: Text("Starred"),
        ),
        ListTile(
          leading: Icon(Icons.recent_actors),
          title: Text("Recent"),
        ),
        ListTile(
          leading: Icon(Icons.share_rounded),
          title: Text("Shared with me"),
        ),
        ListTile(
          leading: Icon(Icons.wallet_travel),
          title: Text("travel"),
        ),
      ])),
      appBar: AppBar(
        title: const Text(
          "Inbox",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Text(
                      "Hey Riya !",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text("Let's explore places",
                        style: TextStyle(fontSize: 15)),
                  ]),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/g1.jpg"),
                  )
                ],
              ),
              Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 35),
                    child: Container(
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "Search docs...",
                            suffixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 30),
                  child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 69, 188, 235),
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => profile()));
                        },
                        child: const Icon(
                          Icons.menu_open,
                          color: Colors.white,
                          size: 45,
                        ),
                      )),
                )
              ]),
              SingleChildScrollView(
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                      itemCount: pics.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      // padding: EdgeInsets.only(right: 10),
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NewClass(
                                        selectedIndex: index,
                                        ImagePath: pics[index],
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                    height: 200,
                                    width: 400,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(pics[index]),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      " Vintage Is Great \n Everytime !",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      " Enjoy your Holidays at different \n places over the country",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: 30,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white),
                                        child: Center(
                                          child: InkWell(
                                            onTap: () {},
                                            child: Text(
                                              "Explore now",
                                              style: TextStyle(
                                                  color: Colors.blueAccent,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ]));
                        // width: 350,
                      }),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: icons.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 20, right: 10),
                        child: Container(
                          color: const Color.fromARGB(255, 252, 250, 250),
                          height: 70,
                          width: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 210, 241, 255),
                                  child: icons[index],
                                  foregroundColor:
                                      const Color.fromARGB(255, 10, 201, 248),
                                  radius: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    text[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Most Popular Places",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Color.fromRGBO(10, 107, 163, 0.938),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: size.height,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: grid.length,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(grid[index]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  grids[index],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Enjoy your holidays",
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Text(
                                          "5.0",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
                                      child: Icon(Icons.heat_pump_rounded),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                      );
                    },
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
