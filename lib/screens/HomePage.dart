// import 'dart:html';
import 'package:the_attendance_book_1/screens/AttendanceReportPage.dart';
import 'package:the_attendance_book_1/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_attendance_book_1/screens/MarkYourAttendance.dart';
import 'package:the_attendance_book_1/screens/WelcomePage.dart';

import 'LeaveApplicationPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth = FirebaseAuth.instance;

  Future<String> inputData() async {
    User? user = await _auth.currentUser;
    final String uid = user!.uid;
    return uid;
  }

  Future<DocumentSnapshot> getUserData() async {
    DocumentSnapshot docs = await FirebaseFirestore.instance
        .collection('students')
        .doc(_auth.currentUser!.uid)
        .get();
    print(docs.get('name'));
    // ref.read(nameProvider.notifier).state = docs.get('name');
    // ref.read(roleProvider.notifier).state = docs.get('role');
    // ref.read(yearProvider.notifier).state = docs.get('year');
    // List<String> topic = ["FE", "SE", "TE", "BE"];
    // ref.read(fcmInst).subscribeToTopic(topic[docs.get('year') - 1]);
    return docs;
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DocumentSnapshot>(
        future: getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFF5F5F5),
            body: SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                            //icon and name of app
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  logout(context);
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return WelcomePage();
                                  }));
                                },
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30, 0, 0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(80),
                                    child: Image.network(
                                      'https://cdn-icons-png.flaticon.com/512/25/25694.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    25, 0, 10, 0),
                                child: Text(
                                  'The Attendance Book',
                                  style: TextStyle(
                                    fontFamily: 'Work Sans',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]),
                        //welcome msgs
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.network(
                                    'https://upload.wikimedia.org/wikipedia/commons/a/ac/Default_pfp.jpg',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 30, 20, 0),
                                child: Text(
                                  'Hi ${snapshot.data!.get('name')}',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.65, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 80, 10, 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return MarkYourAttendancePage();
                                          }));
                                        },
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Image.network(
                                              'https://cdn4.vectorstock.com/i/thumb-large/97/78/qr-code-control-icon-isolated-vector-38959778.jpg',
                                              width: 150,
                                              height: 150,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return AttendanceReportPage();
                                          }));
                                        },
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Image.network(
                                              'https://cdn4.vectorstock.com/i/thumb-large/97/78/qr-code-control-icon-isolated-vector-38959778.jpg',
                                              width: 150,
                                              height: 150,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return LeaveApplicationPage();
                                        }));
                                      },
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 40, 0, 0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Image.network(
                                            'https://cdn4.vectorstock.com/i/thumb-large/97/78/qr-code-control-icon-isolated-vector-38959778.jpg',
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 40, 0, 0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.network(
                                          'https://cdn4.vectorstock.com/i/thumb-large/97/78/qr-code-control-icon-isolated-vector-38959778.jpg',
                                          width: 150,
                                          height: 150,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: TextButton(
                            child: Text("Sign out"),
                            onPressed: () {
                              logout(context);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
