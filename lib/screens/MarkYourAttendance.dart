import 'package:flutter/material.dart';
import 'WelcomePage.dart';

class MarkYourAttendancePage extends StatefulWidget {
  const MarkYourAttendancePage({Key? key}) : super(key: key);

  @override
  _MarkYourAttendancePageState createState() => _MarkYourAttendancePageState();
}

class _MarkYourAttendancePageState extends State<MarkYourAttendancePage> {
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 25, 90, 0),
                      child: Text(
                        'Today\'s Classes',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                        child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                          Padding(
                            //first child
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: SubjectField(
                              subject: "DSA",
                              subjectcolor: Color(0xFFFCE4EC),
                              bordercolor: Color(0xFFFABBD0),
                            ),
                          ),
                          Padding(
                            //second child
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: SubjectField(
                              subject: "MP-R.Psawan",
                              subjectcolor: Color(0xFFC8E6C9),
                              bordercolor: Color(0xFFFCE4EC),
                            ),
                          ),
                          Padding(
                            //third child
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Container(
                              height: 50,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFCE4EC),
                                  border: Border.all(
                                      color: Color(0xFFF8BBD0), width: 2.0)),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'EMIII-H.Masal',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            //fourth child
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Container(
                              height: 50,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFE8F5E9),
                                  border: Border.all(
                                      color: Color(0xFFC8E6C9), width: 2.0)),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'PPL-S.Shendage',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            //fifth child
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Container(
                              height: 50,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFCE4EC),
                                  border: Border.all(
                                      color: Color(0xFFF8BBD0), width: 2.0)),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'SE-',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            //sixth child
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Container(
                              height: 50,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFE8F5E9),
                                  border: Border.all(
                                      color: Color(0xFFC8E6C9), width: 2.0)),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'DSAl-Dr.G.Potdar',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            //seventh child
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Container(
                              height: 50,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFCE4EC),
                                  border: Border.all(
                                      color: Color(0xFFF8BBD0), width: 2.0)),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'MPL-R.Bidwe',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            //eighth child
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Container(
                              height: 50,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFE8F5E9),
                                  border: Border.all(
                                      color: Color(0xFFC8E6C9), width: 2.0)),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'EMIII-TUT-P.Patil',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            //ninth child
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Container(
                              height: 50,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFCE4EC),
                                  border: Border.all(
                                      color: Color(0xFFF8BBD0), width: 2.0)),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'CoC',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            //tenth child
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Container(
                              height: 50,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                              decoration: BoxDecoration(
                                color: Color(0xFFE8F5E9),
                                border: Border.all(
                                    color: Color(0xFFC8E6C9), width: 2.0),
                                //backgroundBlendMode: BlendMode.hue
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'PBL-S.Shendage',
                                  style: TextStyle(
                                    fontFamily: 'Rubik',
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class SubjectField extends StatelessWidget {
  String subject;
  Color subjectcolor;
  Color bordercolor;
  SubjectField(
      {required this.subject,
      required this.subjectcolor,
      required this.bordercolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
      decoration: BoxDecoration(
          color: subjectcolor,
          border: Border.all(color: bordercolor, width: 2.0)),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
        child: Text(
          subject,
          style: TextStyle(
            fontFamily: 'Rubik',
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
