import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_card/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/calvin.jpg"),
              ),
              Text(
                "Calvin D'Souza",
                style: textstyle,
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: GoogleFonts.sourceSansPro(
                    textStyle: TextStyle(
                  color: Colors.teal.shade100,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                )),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "+91 9876543210",
                    style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              ),
              Card(
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "calvin@gmail.com",
                    style: GoogleFonts.sourceSansPro(
                      textStyle: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              ),
            ]),
      ),
    );
  }
}
