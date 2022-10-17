// import 'dart:html';

import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:the_attendance_book_1/screens/userdetails.dart';

class QR_Image extends StatefulWidget {
  String subject = "NULL";
  QR_Image({required this.subject});

  @override
  State<QR_Image> createState() => _QR_ImageState();
}

class _QR_ImageState extends State<QR_Image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
        title: Text("Scan QR"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              QR_Generator(
                subject: widget.subject,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QR_Generator extends StatelessWidget {
  QR_Generator({
    required this.subject,
    //required this.total_lectures,
  });

  final String subject;
  //final int total_lectures;
  final generator_controler = TextEditingController();
  int generated_text = 1;

  Future Lecture_updater(String subject, int total_lectures) async {
    var d = await FirebaseFirestore.instance
        .collection('students')
        .doc(UserDetails.uid)
        .get();
    // print(d.get('SE'));
    // print(subject);
    if (subject == "MPL") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('IceOnlRqXYTKV9IRjyNt4qRsOvq1')
          .update({subject: total_lectures});
    }

    if (subject == "PPL") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('JzJvDfBgePPPzPtDCJPd0W9imAn1')
          .update({subject: total_lectures});
    }
    if (subject == "M3_tut") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('TpSVW1JytpUwXnIjANSWU5OD1FH2')
          .update({subject: total_lectures});
    }

    if (subject == "SE") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('0usnrgK0MaVtuoJ7WtgQ1K3tEIs2')
          .update({subject: total_lectures});
    }

    if (subject == "DSAL") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('3hQGtG6tHXMxNnlLtF4mcjrVSI72')
          .update({subject: total_lectures});
    }

    if (subject == "MP") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('BAOdCt4xYUYEF3Tf8FlNvdzl4m63')
          .update({subject: total_lectures});
    }

    if (subject == "DSA") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('aogbvBpdTVS6saVdIEqgPEBl0zv1')
          .update({subject: total_lectures});
    }

    if (subject == "PBL") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('db5vOxXGByclGtF2EQpvLUawvGn2')
          .update({subject: total_lectures});
    }

    if (subject == "COC") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('lejKYpqhMgN3CDmnboG95JyaXcV2')
          .update({subject: total_lectures});
    }

    if (subject == "M3") {
      FirebaseFirestore.instance
          .collection('teacher')
          .doc('z9bPuVmwTEdpUFa2MbAms1Oy6fP2')
          .update({subject: total_lectures});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: TextField(
            controller: generator_controler,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            decoration: InputDecoration(
              hintText: "Total No. of Lectures",
              filled: true,
              fillColor: Colors.orange[200],
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Lecture_updater(subject, int.parse(generator_controler.text));
          },
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.green,
            side: BorderSide(color: Colors.deepOrange, width: 1),
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            minimumSize: Size(100, 50),
            shadowColor: Colors.red,
          ),
          child: Text(
            " Generate   ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: QrImage(
              data: subject,
              size: 300,
            ),
          ),
        ),
      ],
    );
  }
}
