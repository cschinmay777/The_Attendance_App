import 'package:the_attendance_book_1/screens/AttendanceReportPage.dart';
import 'package:the_attendance_book_1/screens/HomePage.dart';
import 'package:the_attendance_book_1/screens/developers_page.dart';
import 'package:the_attendance_book_1/screens/drawer.dart';
import 'package:the_attendance_book_1/screens/teacherpage.dart';
import 'package:the_attendance_book_1/screens/userdetails.dart';
import 'package:the_attendance_book_1/teacherdetails.dart';
import 'package:the_attendance_book_1/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_attendance_book_1/screens/MarkYourAttendance.dart';
import 'package:the_attendance_book_1/screens/WelcomePage.dart';
import 'LeaveApplicationPage.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'developers_page.dart';

class HomePage extends StatefulWidget {
  HomePage();
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

  // Future<void> getDetails() async {
  //   var v = await FirebaseFirestore.instance
  //       .collection('students')
  //       .doc(_auth.currentUser!.uid)
  //       .get();
  //   UserDetails.COC = v.get('COC');
  //   UserDetails.PPL = v.get('PPL');
  //   UserDetails.PBL = v.get('PBL');
  //   UserDetails.M3 = v.get('M3');
  //   UserDetails.M3_tut = v.get('M3_tut');
  //   UserDetails.DSAL = v.get('DSAL');
  //   UserDetails.MP = v.get('MP');
  //   UserDetails.MPL = v.get('MPL');
  //   UserDetails.SE = v.get('SE');
  //   UserDetails.DSA = v.get('DSA');
  //   UserDetails.role = v.get('role');
  //   UserDetails.uid = v.get('uid');
  //   UserDetails.name = v.get('name');
  //   print(v.get('role'));
  //
  //   var teach = await FirebaseFirestore.instance
  //       .collection('students')
  //       .doc('Xt0HhIXSgCVjPYZsCQk5Y4FC1XC2')
  //       .get();
  //   print(teach.get('DSA'));
  //   // print(teach.get('role'));
  // }

  Future<DocumentSnapshot> getUserData() async {
    if (UserDetails.isteacher == 0) {
      DocumentSnapshot docs = await FirebaseFirestore.instance
          .collection('students')
          .doc(_auth.currentUser!.uid)
          .get();
      UserDetails.uid = _auth.currentUser!.uid;
      UserDetails.COC = docs.get('COC');
      UserDetails.PPL = docs.get('PPL');
      UserDetails.PBL = docs.get('PBL');
      UserDetails.M3 = docs.get('M3');
      UserDetails.M3_tut = docs.get('M3_tut');
      UserDetails.DSAL = docs.get('DSAL');
      UserDetails.MP = docs.get('MP');
      UserDetails.MPL = docs.get('MPL');
      UserDetails.SE = docs.get('SE');
      UserDetails.DSA = docs.get('DSA');
      UserDetails.role = docs.get('role');
      UserDetails.name = docs.get('name');
      UserDetails.lname = docs.get('lname');
      //UserDetails.subject = docs.get('subject');
      print(docs.get('name'));
      print("in try");

      return docs;
    } else {
      // print(e);
      DocumentSnapshot docs = await FirebaseFirestore.instance
          .collection('teacher')
          .doc(_auth.currentUser!.uid)
          .get();
      UserDetails.uid = _auth.currentUser!.uid;
      UserDetails.COC = docs.get('COC');
      UserDetails.PPL = docs.get('PPL');
      UserDetails.PBL = docs.get('PBL');
      UserDetails.M3 = docs.get('M3');
      UserDetails.M3_tut = docs.get('M3_tut');
      UserDetails.DSAL = docs.get('DSAL');
      UserDetails.MP = docs.get('MP');
      UserDetails.MPL = docs.get('MPL');
      UserDetails.SE = docs.get('SE');
      UserDetails.DSA = docs.get('DSA');
      UserDetails.role = docs.get('role');
      UserDetails.name = docs.get('name');
      UserDetails.lname = docs.get('lname');
      UserDetails.subject = docs.get('subject');
      print(docs.get('in catch'));
      print(UserDetails.subject);

      return docs;
    }
  }

  Future<DocumentSnapshot> getTeacherData() async {
    DocumentSnapshot dsadocs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('aogbvBpdTVS6saVdIEqgPEBl0zv1')
        .get();

    DocumentSnapshot ppldocs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('JzJvDfBgePPPzPtDCJPd0W9imAn1')
        .get();

    DocumentSnapshot mpldocs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('IceOnlRqXYTKV9IRjyNt4qRsOvq1')
        .get();

    DocumentSnapshot mpdocs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('BAOdCt4xYUYEF3Tf8FlNvdzl4m63')
        .get();

    DocumentSnapshot cocdocs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('lejKYpqhMgN3CDmnboG95JyaXcV2')
        .get();

    DocumentSnapshot m3_tutdocs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('TpSVW1JytpUwXnIjANSWU5OD1FH2')
        .get();

    DocumentSnapshot m3docs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('z9bPuVmwTEdpUFa2MbAms1Oy6fP2')
        .get();

    DocumentSnapshot dsaldocs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('3hQGtG6tHXMxNnlLtF4mcjrVSI72')
        .get();

    DocumentSnapshot sedocs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('0usnrgK0MaVtuoJ7WtgQ1K3tEIs2')
        .get();

    DocumentSnapshot pbldocs = await FirebaseFirestore.instance
        .collection('teacher')
        .doc('db5vOxXGByclGtF2EQpvLUawvGn2')
        .get();
    TeacherDetails.uid = _auth.currentUser!.uid;
    TeacherDetails.COC = cocdocs.get('COC');
    TeacherDetails.PPL = ppldocs.get('PPL');
    TeacherDetails.PBL = pbldocs.get('PBL');
    TeacherDetails.M3 = m3docs.get('M3');
    TeacherDetails.M3_tut = m3_tutdocs.get('M3_tut');
    TeacherDetails.DSAL = dsaldocs.get('DSAL');
    TeacherDetails.MP = mpdocs.get('MP');
    TeacherDetails.MPL = mpldocs.get('MPL');
    TeacherDetails.SE = sedocs.get('SE');
    TeacherDetails.DSA = dsadocs.get('DSA');
    TeacherDetails.role = "teacher";
    // TeacherDetails.name = tdocs.get('name');

    // print(docs.get('name'));
    return mpdocs;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTeacherData();
    getUserData();
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    print(UserDetails.subject);
    print("hi");
    print(UserDetails.name);

    return (UserDetails.isteacher == 1)
        ? TeacherPage()
        : FutureBuilder<DocumentSnapshot>(
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
                appBar: AppBar(
                  leading: IconButton(
                    iconSize: 40,
                    icon: Icon(
                      Icons.drag_handle_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return NavDrawer();
                      }));
                    },
                  ),
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.indigo,
                  title: Text("The Attendance Book"),
                  centerTitle: true,
                ),
                body: CustomScrollView(
                  slivers: [
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                ClipPath(
                                  clipper: OvalBottomBorderClipper(),
                                  child: Container(
                                    height: (height + 50) / 4,
                                    color: Colors.indigo,
                                  ),
                                ),
                                Positioned(
                                  left: 15,
                                  top: 20,
                                  child: Container(
                                    height: ((height - 30) / 4),
                                    width: width - 30,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // border: Border.all(
                                        //   color: Colors.black,
                                        //   width: 2.0,
                                        // ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 6.0,
                                              offset: Offset(2.0, 6.0))
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: CircleAvatar(
                                            radius: 50,
                                            child: Image(
                                              image:
                                                  AssetImage('images/pp.png'),
                                              width: 120,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          '${snapshot.data!.get('name')} ${snapshot.data!.get('lname')}',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return MarkYourAttendancePage();
                                    }));
                                  },
                                  child: Container(
                                    height: height / 5.5,
                                    width: height / 5.5,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // border: Border.all(
                                        //   color: Colors.black,
                                        //   width: 2.0,
                                        // ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 6.0,
                                              offset: Offset(6.0, 6.0))
                                        ]),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image(
                                          image: AssetImage('images/scann.png'),
                                          width: 100,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text('Scan Attendance'),
                                      ],
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return AttendanceReportPage();
                                    }));
                                  },
                                  child: Container(
                                    height: height / 5.5,
                                    width: height / 5.5,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        // border: Border.all(
                                        //   color: Colors.black,
                                        //   width: 2.0,
                                        // ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 6.0,
                                              offset: Offset(6.0, 6.0))
                                        ]),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Image(
                                          image: AssetImage('images/repo.png'),
                                          width: height / 5 - 70,
                                          height: height / 5 - 70,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Center(
                                            child: Text('Attendance\nReport')),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                ClipPath(
                                  clipper: RoundedDiagonalPathClipper(),
                                  child: Container(
                                    height: height / 3 - 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(0.0)),
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return LeaveApplicationPage();
                                        }));
                                      },
                                      child: Container(
                                        height: height / 5.5,
                                        width: height / 5.5,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            // border: Border.all(
                                            //   color: Colors.black,
                                            //   width: 2.0,
                                            // ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black38,
                                                  blurRadius: 25.0,
                                                  offset: Offset(2.0, 6.0))
                                            ]),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'images/leaveapplication.png'),
                                              width: height / 5 - 60,
                                              height: height / 5 - 60,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text('Leave Application'),
                                          ],
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return DeveloperPageWidget();
                                        }));
                                      },
                                      child: Container(
                                        height: height / 5.5,
                                        width: height / 5.5,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            // border: Border.all(
                                            //   color: Colors.black,
                                            //   width: 2.0,
                                            // ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black38,
                                                  blurRadius: 25.0,
                                                  offset: Offset(2.0, 6.0))
                                            ]),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 12,
                                            ),
                                            Image(
                                              image: AssetImage(
                                                  'images/developer.png'),
                                              width: height / 5 - 60,
                                              height: height / 5 - 60,
                                              fit: BoxFit.cover,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text('Developers Page'),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                drawer: NavDrawer(),
              );
            });
  }
}
