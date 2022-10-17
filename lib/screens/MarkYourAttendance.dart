// import 'dart:html';

import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/userdetails.dart';
import 'WelcomePage.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class MarkYourAttendancePage extends StatefulWidget {
  const MarkYourAttendancePage({Key? key}) : super(key: key);

  @override
  _MarkYourAttendancePageState createState() => _MarkYourAttendancePageState();
}

class _MarkYourAttendancePageState extends State<MarkYourAttendancePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Select Lecture"),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                    Subjetbutton(
                      subject: "DSA",
                      subjectcolor: Color(0xFFFCE4EC),
                    ),
                    Subjetbutton(
                      subject: "MP",
                      subjectcolor: Color(0xFFC8E6C9),
                    ),
                    Subjetbutton(
                      subject: "M3",
                      subjectcolor: Color(0xFFFCE4EC),
                    ),
                    Subjetbutton(
                        subject: 'PPL', subjectcolor: Color(0xFFC8E6C9)),
                    Subjetbutton(
                      subject: 'SE',
                      subjectcolor: Color(0xFFFCE4EC),
                    ),
                    Subjetbutton(
                      subject: 'DSAL',
                      subjectcolor: Color(0xFFC8E6C9),
                    ),
                    // Button_Design_1(width: width, height: height),
                    Subjetbutton(
                      subject: 'MPL',
                      subjectcolor: Color(0xFFFCE4EC),
                    ),
                    Subjetbutton(
                      subject: 'M3_tut',
                      subjectcolor: Color(0xFFC8E6C9),
                    ),
                    Subjetbutton(
                      subject: 'COC',
                      subjectcolor: Color(0xFFFCE4EC),
                    ),
                    Subjetbutton(
                      subject: 'PBL',
                      subjectcolor: Color(0xFFC8E6C9),
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

  Future _qrScanner(String subject) async {
    bool isscanned = false;
    var camaraStatus = await Permission.camera.status;
    if (camaraStatus.isGranted) {
      String? qrdata = await scanner.scan();
      // print(qrdata);
      qrdata == subject ? isscanned = true : isscanned = false;
      // print("hi up if");
      var d = await FirebaseFirestore.instance
          .collection('students')
          .doc(UserDetails.uid)
          .get();

      int initialAttendance = d.get(subject);
      // print(initialAttendance);
      // print('kk');
      // print(isscanned);

      isscanned
          ? FirebaseFirestore.instance
              .collection('students')
              .doc(UserDetails.uid)
              .update({subject: initialAttendance + 1})
          : initialAttendance;
    } else {
      var isGrant = await Permission.camera.request();

      if (isGrant.isGranted) {
        String? qrdata = await scanner.scan();
        print(qrdata);
        qrdata == subject ? isscanned = true : isscanned = false;

        var d = await FirebaseFirestore.instance
            .collection('students')
            .doc(UserDetails.uid)
            .get();

        int initialAttendance = d.get(subject);

        isscanned
            ? FirebaseFirestore.instance
                .collection('students')
                .doc(UserDetails.uid)
                .update({subject: initialAttendance + 1})
            : initialAttendance;
      }
    }
  }

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
                  _qrScanner(subject);
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

// class Button_Design_1 extends StatelessWidget {
//   const Button_Design_1({
//     Key? key,
//     required this.width,
//     required this.height,
//   }) : super(key: key);
//
//   final double width;
//   final double height;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Center(
//         child: Container(
//           width: width - 40,
//           height: (height / 12),
//           child: OutlineGradientButton(
//             child: Center(
//               child: FlatButton(
//                 onPressed: () { _qrScanner(subject); },
//                 child: Text('$subject',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 22,
//                         fontWeight: FontWeight.bold)),
//               ),
//             ),
//             gradient: LinearGradient(colors: [Colors.orange, Colors.yellow]),
//             strokeWidth: 5,
//             padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//             corners: Corners(
//                 topLeft: Radius.circular(16),
//                 bottomLeft: Radius.circular(16),
//                 topRight: Radius.circular(16),
//                 bottomRight: Radius.circular(16)),
//             backgroundColor: Colors.blueAccent,
//             elevation: 4,
//             inkWell: true,
//             // onTap: () => showSnack('onTap'),
//             // onDoubleTap: () => showSnack('onDoubleTap'),
//             // onLongPress: () => showSnack('onLongPress'),
//           ),
//         ),
//       ),
//     );
//   }
// }
