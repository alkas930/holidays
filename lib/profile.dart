import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: Text(
            "My profile",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 30,
                child: Text(
                  "AS",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Alka Saini",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Divider(
                color: Color.fromARGB(255, 218, 215, 215),
              ),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text("My Orders"),
              trailing: Icon(Icons.arrow_right),
            ),
            Divider(
              color: Color.fromARGB(255, 245, 242, 242),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "SETTINGS",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("User Profile"),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Allow Push notification"),
              subtitle: Text("Get update on your sales and purchese"),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payment methods"),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(Icons.place),
              title: Text("Delivery address"),
              trailing: Icon(Icons.arrow_right),
            ),
            Divider(
              color: Color.fromARGB(255, 245, 242, 242),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "HELP",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 245, 242, 242),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
