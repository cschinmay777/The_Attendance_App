import 'package:flutter/material.dart';

import 'HomePage.dart';

class LeaveApplicationPage extends StatefulWidget {
  const LeaveApplicationPage({Key? key}) : super(key: key);

  @override
  _LeaveApplicationPageState createState() => _LeaveApplicationPageState();
}

class _LeaveApplicationPageState extends State<LeaveApplicationPage> {
  late TextEditingController textController1;
  late TextEditingController textController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
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
              child: SingleChildScrollView(
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
                                  return HomePage();
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
                      SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
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
                                    20, 0, 20, 0),
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
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 25, 30, 0),
                        child: Text(
                          'Leave Application',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Enter Your Name',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Enter Your Roll No.',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        //second data field
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
                        //third data field
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Leave From (Date)',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                        child: TextFormField(
                          controller: textController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '10/02/2020',
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
                        //third data field
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'To (Date)',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                        child: TextFormField(
                          controller: textController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '15/02/2020',
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
                        //third data field
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: Text(
                          'Reason From Leave',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 0),
                        child: TextFormField(
                          controller: textController1,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: '  ',
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
                      SizedBox(
                        height: 20,
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
