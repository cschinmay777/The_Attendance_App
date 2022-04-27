import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_attendance_book_1/screens/MarkYourAttendance.dart';
import 'package:the_attendance_book_1/screens/WelcomePage.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({Key? key}) : super(key: key);

  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
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
                  //welcome msgs
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
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
                          padding:
                              EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                          child: Text(
                            'Hi Teacher',
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 80, 10, 10),
                      child: Column(mainAxisSize: MainAxisSize.max, children: [
                        Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return MarkYourAttendancePage();
                                  }));
                                },
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
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
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                            ]),
                        Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
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
                            ]),
                      ]),
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
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Fluttertoast.showToast(
        msg: "Succesfully logout",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 40.0);
    // Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(builder: (context) => LoginScreen()));
    Navigator.pop(context);
  }
}
