// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

// import 'dart:html';

import 'dart:ui';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/userdetails.dart';
import 'QR_Page.dart';
import 'WelcomePage.dart';

class TakeYourAttendance extends StatefulWidget {
  const TakeYourAttendance({Key? key}) : super(key: key);

  @override
  _TakeYourAttendanceState createState() => _TakeYourAttendanceState();
}

class _TakeYourAttendanceState extends State<TakeYourAttendance> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        title: Text("Select Lecture"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Expanded(
                  child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                    Visibility(
                      visible: (UserDetails.subject == 'DSA'),
                      child: Subjetbutton(
                        subject: "DSA",
                        subjectcolor: Color(0xFFFCE4EC),
                      ),
                    ),
                    Visibility(
                      visible: (UserDetails.subject == 'MP'),
                      child: Subjetbutton(
                        subject: "MP",
                        subjectcolor: Color(0xFFC8E6C9),
                      ),
                    ),
                    Visibility(
                      visible: (UserDetails.subject == "M3"),
                      child: Subjetbutton(
                        subject: "M3",
                        subjectcolor: Color(0xFFFCE4EC),
                      ),
                    ),
                    Visibility(
                      visible: (UserDetails.subject == 'PPL'),
                      child: Subjetbutton(
                          subject: 'PPL', subjectcolor: Color(0xFFC8E6C9)),
                    ),
                    Visibility(
                      visible: (UserDetails.subject == 'SE'),
                      child: Subjetbutton(
                        subject: 'SE',
                        subjectcolor: Color(0xFFFCE4EC),
                      ),
                    ),
                    Visibility(
                      visible: (UserDetails.subject == 'DSAL'),
                      child: Subjetbutton(
                        subject: 'DSAL',
                        subjectcolor: Color(0xFFC8E6C9),
                      ),
                    ),
                    Visibility(
                      visible: (UserDetails.subject == 'MPL'),
                      child: Subjetbutton(
                        subject: 'MPL',
                        subjectcolor: Color(0xFFFCE4EC),
                      ),
                    ),
                    Visibility(
                      visible: (UserDetails.subject == 'M3_tut'),
                      child: Subjetbutton(
                        subject: 'M3_tut',
                        subjectcolor: Color(0xFFC8E6C9),
                      ),
                    ),
                    Visibility(
                      visible: (UserDetails.subject == 'COC'),
                      child: Subjetbutton(
                        subject: 'COC',
                        subjectcolor: Color(0xFFFCE4EC),
                      ),
                    ),
                    Visibility(
                      visible: (UserDetails.subject == 'PBL'),
                      child: Subjetbutton(
                        subject: 'PBL',
                        subjectcolor: Color(0xFFC8E6C9),
                      ),
                    ),
                  ]))
            ]),
      ),
    );
  }
}

class Subjetbutton extends StatelessWidget {
  String subject;
  Color subjectcolor;
  Subjetbutton({required this.subject, required this.subjectcolor});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: width - 40,
          height: (height / 12),
          child: OutlineGradientButton(
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return QR_Image(subject: subject);
                  }));
                },
                child: Text('$subject',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            gradient: LinearGradient(colors: [Colors.orange, Colors.yellow]),
            strokeWidth: 5,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            corners: Corners(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            backgroundColor: Colors.blueAccent,
            elevation: 4,
            inkWell: true,
            // onTap: () => showSnack('onTap'),
            // onDoubleTap: () => showSnack('onDoubleTap'),
            // onLongPress: () => showSnack('onLongPress'),
          ),
        ),
      ),
    );
  }
}
