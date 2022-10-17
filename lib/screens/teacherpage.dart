import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_attendance_book_1/screens/LoginPage.dart';
import 'package:the_attendance_book_1/screens/MarkYourAttendance.dart';
import 'package:the_attendance_book_1/screens/StudentList.dart';
import 'package:the_attendance_book_1/screens/TakeYourAttendance.dart';
import 'package:the_attendance_book_1/screens/WelcomePage.dart';
import 'package:the_attendance_book_1/screens/developers_page.dart';
import 'package:the_attendance_book_1/screens/drawer.dart';

import 'StudentList.dart';

class TeacherPage extends StatefulWidget {
  const TeacherPage({Key? key}) : super(key: key);

  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

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
            Navigator.push(context, MaterialPageRoute(builder: (context) {
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
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 6.0,
                                    offset: Offset(2.0, 6.0))
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 50,
                                  child: Image(
                                    image: AssetImage('images/pp.png'),
                                    width: 120,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Teacher',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
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
                            return TakeYourAttendance();
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
                              borderRadius: BorderRadius.circular(10.0),
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
                              Text('Take Attendance'),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return StudentList();
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
                              borderRadius: BorderRadius.circular(10.0),
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
                              Center(child: Text('Attendance\nReport')),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(0.0)),
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // FlatButton(
                          //   onPressed: () {},
                          //   child: Container(
                          //     height: height / 5,
                          //     width: height / 5,
                          //     decoration: BoxDecoration(
                          //         color: Colors.white,
                          //         // border: Border.all(
                          //         //   color: Colors.black,
                          //         //   width: 2.0,
                          //         // ),
                          //         borderRadius: BorderRadius.circular(10.0),
                          //         boxShadow: [
                          //           BoxShadow(
                          //               color: Colors.black38,
                          //               blurRadius: 25.0,
                          //               offset: Offset(2.0, 6.0))
                          //         ]),
                          //     child: Column(
                          //       children: [
                          //         SizedBox(
                          //           height: 10,
                          //         ),
                          //         Image(
                          //           image: AssetImage(
                          //               'images/leaveapplication.png'),
                          //           width: height / 5 - 60,
                          //           height: height / 5 - 60,
                          //           fit: BoxFit.cover,
                          //         ),
                          //         SizedBox(
                          //           height: 10,
                          //         ),
                          //         Text('Leave Application'),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          //FlatButton(
                          TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
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
                                  borderRadius: BorderRadius.circular(10.0),
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
                                    image: AssetImage('images/developer.png'),
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
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
    //Navigator.pop(context);
  }
}
