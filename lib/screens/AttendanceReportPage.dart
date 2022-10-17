// import 'dart:html';

import 'dart:ui';
import 'package:the_attendance_book_1/screens/userdetails.dart';

import 'package:the_attendance_book_1/screens/userdetails.dart';
import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/WelcomePage.dart';

import '../teacherdetails.dart';

class AttendanceReportPage extends StatefulWidget {
  const AttendanceReportPage({Key? key}) : super(key: key);

  @override
  State<AttendanceReportPage> createState() => _AttendanceReportPageState();
}

class _AttendanceReportPageState extends State<AttendanceReportPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String Percentage(int? a, int? b) {
    double per = (b! / a!) * 100;
    return per.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Attendance Report"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "ATTENDANCE REPORT",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    HeadRow([
                      'Subject',
                      'Total Lectures',
                      'Attended Lectures',
                      'Ratio'
                    ]),
                    BuildRow([
                      'DSA',
                      '${TeacherDetails.DSA}',
                      '${UserDetails.DSA}',
                      '${Percentage(TeacherDetails.DSA, UserDetails.DSA)}'
                    ]),
                    BuildRow([
                      'COC',
                      '${TeacherDetails.COC}',
                      '${UserDetails.COC}',
                      '${Percentage(TeacherDetails.COC, UserDetails.COC)}'
                    ]),
                    BuildRow([
                      'DSAL',
                      '${TeacherDetails.DSAL}',
                      '${UserDetails.DSAL}',
                      '${Percentage(TeacherDetails.DSAL, UserDetails.DSAL)}'
                    ]),
                    BuildRow([
                      'M3',
                      '${TeacherDetails.M3}',
                      '${UserDetails.M3}',
                      '${Percentage(TeacherDetails.M3, UserDetails.M3)}'
                    ]),
                    BuildRow([
                      'M3_Tut',
                      '${TeacherDetails.M3_tut}',
                      '${UserDetails.M3_tut}',
                      '${Percentage(TeacherDetails.M3_tut, UserDetails.M3_tut)}'
                    ]),
                    BuildRow([
                      'MP',
                      '${TeacherDetails.MP}',
                      '${UserDetails.MP}',
                      '${Percentage(TeacherDetails.MP, UserDetails.MP)}'
                    ]),
                    BuildRow([
                      'MPL',
                      '${TeacherDetails.MPL}',
                      '${UserDetails.MPL}',
                      '${Percentage(TeacherDetails.MPL, UserDetails.MPL)}'
                    ]),
                    BuildRow([
                      'PBL',
                      '${TeacherDetails.PBL}',
                      '${UserDetails.PBL}',
                      '${Percentage(TeacherDetails.PBL, UserDetails.PBL)}'
                    ]),
                    BuildRow([
                      'PPL',
                      '${TeacherDetails.PPL}',
                      '${UserDetails.PPL}',
                      '${Percentage(TeacherDetails.PPL, UserDetails.PPL)}'
                    ]),
                    BuildRow([
                      'SE',
                      '${TeacherDetails.SE}',
                      '${UserDetails.SE}',
                      '${Percentage(TeacherDetails.SE, UserDetails.SE)}'
                    ]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow HeadRow(List<String> cells) => TableRow(
      children: cells
          .map((cell) => Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 8.0, top: 8, bottom: 8),
                child: Center(
                  child: Text(
                    cell,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ))
          .toList());

  TableRow BuildRow(List<String> cells) => TableRow(
      children: cells
          .map((cell) => Padding(
                padding: const EdgeInsets.only(
                    left: 12.0, right: 8.0, top: 8, bottom: 8),
                child: Center(child: Text(cell)),
              ))
          .toList());
}
