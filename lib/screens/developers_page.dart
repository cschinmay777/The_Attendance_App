import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_attendance_book_1/screens/Developer_Card.dart';

class DeveloperPageWidget extends StatefulWidget {
  @override
  _DeveloperPageWidgetState createState() => _DeveloperPageWidgetState();
}

class _DeveloperPageWidgetState extends State<DeveloperPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 115,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage('images/developer.png'),
                  ),
                ),
              ),
              Container(
                //color: Colors.grey,
                margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: Center(
                  child: Text(
                    'Developers',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                //color: Colors.grey,
                height: 30,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Center(
                  child: Text(
                    'The Attendance App',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                //color: Colors.indigo[10],
                width: 100,
                height: 100,
                margin: EdgeInsets.fromLTRB(50, 50, 50, 10),
                child: IconButton(
                    icon: FaIcon(FontAwesomeIcons.forward),
                    iconSize: 50,
                    color: Colors.indigo,
                    hoverColor: Colors.black54,
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return Developer_Card();
                      }));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
