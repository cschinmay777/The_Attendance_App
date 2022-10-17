// import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/HomePage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_attendance_book_1/screens/ResetPasswordPage.dart';
import 'package:the_attendance_book_1/screens/WelcomePage.dart';
import 'package:the_attendance_book_1/screens/userdetails.dart';
import 'package:the_attendance_book_1/widgets.dart';
import 'package:switch_button/switch_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  final _auth = FirebaseAuth.instance;
  Future<void> inputData() async {
    User? user = await _auth.currentUser;
    final String uid = user!.uid;
  }

  // final User? user = _auth.currentUser;
  late TextEditingController textController1;
  late TextEditingController textController2;
  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
  }

  late int isteacher;
  bool state = false;
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Text(
                          'The Attendance Book',
                          style: TextStyle(
                            fontFamily: 'Work Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        //LOGO
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image(
                            image: AssetImage('images/login_page_image.png'),
                            //'https://www.allgeo.com/newtemp/images/fieldservice/qr-code8.png',
                            width: 191,
                            height: 204,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Text(
                          'Login To Your Account',
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
                            hintText: 'Your C2K2010.......ID',
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
                            //color: Color(0xff9E9E9E),
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        //SECOND DATA FIELD
                        padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                        child: TextFormField(
                          controller: textController2,
                          obscureText: !passwordVisibility,
                          decoration: InputDecoration(
                            hintText: 'Password',
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
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              child: Icon(
                                passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                          ),
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            //color: Color(0xFF9E9E9E),
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ResetPasswordPage();
                          }));
                        },
                        child: const Padding(
                          //forgot password
                          padding:
                              EdgeInsetsDirectional.fromSTEB(150, 10, 0, 0),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF212121),
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        child: Center(
                          child: SwitchButton(
                            value: state,
                            onToggle: (val) {
                              setState(() {
                                if (state == false) {
                                  state = true;
                                  (UserDetails.isteacher = 1);
                                } else {
                                  state = false;
                                  (UserDetails.isteacher = 0);
                                }
                              });
                            },
                            child: Text(
                              "Teacher login",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      // TextButton(
                      //   onPressed: () {
                      //     setState(() {
                      //       UserDetails.isteacher = 1;
                      //     });
                      //     // UserDetails.isteacher = 0;
                      //     print(UserDetails.isteacher);
                      //   },
                      //   child: const Padding(
                      //     //forgot password
                      //     padding:
                      //         EdgeInsetsDirectional.fromSTEB(150, 10, 0, 0),
                      //     child: Text(
                      //       'Teacher login',
                      //       style: TextStyle(
                      //         fontFamily: 'Roboto',
                      //         color: Color(0xFF212121),
                      //         fontSize: 15,
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: ElevatedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Popins',
                                fontSize: 15),
                          ),
                          onPressed: () async {
                            print(UserDetails.isteacher);
                            setState(() {
                              email = textController1.text;
                              password = textController2.text;
                            });

                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                email: email.trim(),
                                password: password,
                              );

                              if (user != null) {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  Fluttertoast.showToast(
                                      msg: "login Succesful",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 3,
                                      backgroundColor: Colors.red,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                  return HomePage();
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
                                  fontSize: 16.0);
                            }
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFFD93939)),
                              fixedSize:
                                  MaterialStateProperty.all(Size(130, 40)),
                              textStyle: MaterialStateProperty.all(TextStyle(
                                  fontFamily: 'Popins', color: Colors.white)),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(
                                      5)), //adds padding to text inside button
                              foregroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(
                                          color: Color(0xFFD93939))))),
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
