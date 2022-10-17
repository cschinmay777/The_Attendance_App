import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_attendance_book_1/screens/LoginPage.dart';

import 'WelcomePage.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  late TextEditingController textController1;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _auth = FirebaseAuth.instance;
  String email = '';
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text("The Attendance Book"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                  child: Center(
                    child: Text(
                      'RESET',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Center(
                    child: Text(
                      'Your Password Here',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                  child: Text(
                    'Enter Your Mail id here',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  //FIRST DATA FIELD
                  padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                  child: TextFormField(
                    controller: textController1,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: '   ',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Color(0xFFD1CFCF),
                    ),
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.black, //Color(0xff9E9E9E),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: ElevatedButton(
                    child: Text(
                      "Send Link",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Popins',
                          fontSize: 15),
                    ),
                    onPressed: () async {
                      setState(() {
                        email = textController1.text;
                      });

                      try {
                        final user = await _auth.sendPasswordResetEmail(
                          email: email.trim(),
                        );

                        if (textController1.text != "") {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            Fluttertoast.showToast(
                                msg: "Link Sent",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 3,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                            return LoginPage();
                          }));
                        }
                      } on FirebaseAuthException catch (error) {
                        Fluttertoast.showToast(
                            msg: "error : ${error.message}",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 3,
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 40.0);
                      }
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                        fixedSize: MaterialStateProperty.all(Size(130, 40)),
                        textStyle: MaterialStateProperty.all(TextStyle(
                            fontFamily: 'Popins', color: Colors.white)),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(5),
                        ), //adds padding to text inside button
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.indigo),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.white)))),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
