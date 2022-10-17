import 'package:flutter/material.dart';

class ShortAttendanceReport extends StatelessWidget {
  List alldata = [];
  ShortAttendanceReport({required this.alldata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Attendance Report"),
        centerTitle: true,
      ),
      body: Table(
        border: TableBorder.all(),
        children: [
          TableRow(children: [
            TableCell(
              child: Text("DSA"),
            ),
            TableCell(
              child: Text(alldata[0]),
            ),
          ])
        ],
      ),
    );
    ;
  }
}
