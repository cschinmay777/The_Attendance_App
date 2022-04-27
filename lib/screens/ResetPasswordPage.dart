import 'package:flutter/material.dart';

import 'WelcomePage.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  late TextEditingController textController1;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
  }

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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 10, 0),
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
                          color: Color(0xff9E9E9E),
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
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
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFD93939)),
                            fixedSize: MaterialStateProperty.all(Size(130, 40)),
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
                                    side:
                                        BorderSide(color: Color(0xFFD93939))))),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
