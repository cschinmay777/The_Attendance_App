import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/WelcomePage.dart';

class AttendanceReportPage extends StatefulWidget {
  const AttendanceReportPage({Key? key}) : super(key: key);

  @override
  State<AttendanceReportPage> createState() => _AttendanceReportPageState();
}

class _AttendanceReportPageState extends State<AttendanceReportPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
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
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return WelcomePage();
                            }));
                          },
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
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
                          padding: EdgeInsetsDirectional.fromSTEB(25, 0, 10, 0),
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Text(
                            'Hi Sakshi!!!!!',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
