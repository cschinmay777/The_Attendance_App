import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/LeaveApplication.dart';

class LeaveApplication extends StatefulWidget {
  String name;
  String roll_no;
  String from_date;
  String to_date;
  String reason;

  LeaveApplication(
      {required this.name,
      required this.roll_no,
      required this.from_date,
      required this.to_date,
      required this.reason});

  @override
  State<LeaveApplication> createState() => _LeaveApplicationState();
}

class _LeaveApplicationState extends State<LeaveApplication> {
  String application =
      " To ,\n Class co-ordinator.\n\nSubject - Application for leave \n\n Respected class co-ordinator,\n    I am () , roll number -(roll number) .I would like to bring your kind attention that due to (reason). I’ll be unable to attend college from (starting date) to (ending date).\n    I request you to kindly provide me with leave from (starting date) to (ending date). I shall be grateful. \n\nThanking you Yours faithfully \nName)";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leave Application"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Container(
          child: Text(
            " To ,\n Class co-ordinator.\n\nSubject - Application for leave \n\n Respected class co-ordinator,\n    I am ${widget.name} , roll number -${widget.roll_no} .I would like to bring your kind attention that due to ${widget.reason}. I’ll be unable to attend college from ${widget.from_date} to ${widget.to_date}.\n    I request you to kindly provide me with leave from ${widget.from_date} to ${widget.to_date}. I shall be grateful. \n\nThanking you Yours faithfully \n${widget.name})",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
