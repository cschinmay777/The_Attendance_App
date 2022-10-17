// import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/HomePage.dart';
import 'package:the_attendance_book_1/screens/userdetails.dart';
import 'package:circle_button/circle_button.dart';

class Choice extends StatefulWidget {
  const Choice({Key? key}) : super(key: key);

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("ARE YOU TEACHER"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleButton(
                onTap: () {
                  setState(() {
                    UserDetails.isteacher = 1;
                  });
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                tooltip: 'Circle Button',
                width: 200.0,
                height: 200.0,
                borderColor: Colors.white,
                borderWidth: 8.0,
                backgroundColor: Colors.indigo,
                child: Text(
                  "YES",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70,
                      fontWeight: FontWeight.w900),
                )),
          ),
          SizedBox(
            height: 60,
          ),
          CircleButton(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
              tooltip: 'Circle Button',
              width: 200.0,
              height: 200.0,
              borderColor: Colors.indigo,
              borderWidth: 8.0,
              backgroundColor: Colors.white,
              child: Text(
                "NO",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 70,
                    fontWeight: FontWeight.w900),
              )),
        ],
      ),
    );
  }
}
