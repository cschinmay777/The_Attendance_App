// import 'dart:html';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/ShortAttendanceReport.dart';
import 'package:the_attendance_book_1/screens/userdetails.dart';
import 'package:the_attendance_book_1/teacherdetails.dart';

class StudentList extends StatefulWidget {
  // const StudentList({Key? key}) : super(key: key);

  @override
  State<StudentList> createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  final Stream<QuerySnapshot> studentStream =
      FirebaseFirestore.instance.collection('students').snapshots();

  final CollectionReference student =
      FirebaseFirestore.instance.collection('students');

  String Percentage(int? a, int? b) {
    double per = (b! / a!) * 100;
    return per.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: studentStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          print("Something went wrong");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        final List storedocs = [];
        snapshot.data!.docs.map((DocumentSnapshot document) {
          Map a = document.data() as Map<String, dynamic>;
          a['id'] = document.id;
          storedocs.add(a);
        }).toList();

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo,
            title: Text("Attendance Book"),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomScrollView(
              scrollDirection: Axis.vertical,
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Table(
                      border: TableBorder.all(),
                      columnWidths: const <int, TableColumnWidth>{
                        0: FixedColumnWidth(140),
                      },
                      children: [
                        TableRow(children: [
                          TableCell(
                            child: Center(
                                child: Text(
                              "Name of Student",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "DSA",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "MP",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "M3",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "PPL",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "SE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "MPL",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "DSAL",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "PBL",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "COC",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                          ),
                          TableCell(
                            child: Center(
                                child: Text(
                              "M3_tut",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                          ),
                        ]),
                        for (var i = 0; i < storedocs.length; i++) ...[
                          TableRow(children: [
                            TableCell(
                              child: Center(
                                child: Text(
                                    '${storedocs[i]['name']} ${storedocs[i]['lname']}'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['DSA'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                    '${Percentage(TeacherDetails.DSA, storedocs[i]['DSA'])}'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['MP'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                    '${Percentage(TeacherDetails.MP, storedocs[i]['MP'])}'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['M3'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                    '${Percentage(TeacherDetails.M3, storedocs[i]['M3'])}'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['PPL'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                    '${Percentage(TeacherDetails.PPL, storedocs[i]['PPL'])}'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['SE'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                    '${Percentage(TeacherDetails.SE, storedocs[i]['SE'])}'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['MPL'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                    '${Percentage(TeacherDetails.MPL, storedocs[i]['MPL'])}'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['DSAL'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                  '${Percentage(TeacherDetails.DSAL, storedocs[i]['DSAL'])}',
                                ),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['PBL'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                    '${Percentage(TeacherDetails.PBL, storedocs[i]['PBL'])}'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['COC'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                    '${Percentage(TeacherDetails.COC, storedocs[i]['COC'])}'),
                              ),
                            ),
                            TableCell(
                              child: Container(
                                color: double.parse(Percentage(
                                            TeacherDetails.DSAL,
                                            storedocs[i]['M3_tut'])) <
                                        int.parse("75")
                                    ? Colors.red
                                    : null,
                                child: Text(
                                    '${Percentage(TeacherDetails.M3_tut, storedocs[i]['M3_tut'])}'),
                              ),
                            ),
                          ])
                        ]
                      ]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
