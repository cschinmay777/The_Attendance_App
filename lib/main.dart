import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/AttendanceReportPage.dart';
import 'package:the_attendance_book_1/screens/HomePage.dart';
import 'package:the_attendance_book_1/screens/MarkYourAttendance.dart';
import 'package:the_attendance_book_1/screens/TakeYourAttendance.dart';
import 'package:the_attendance_book_1/screens/WelcomePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:the_attendance_book_1/screens/drawer.dart';
import 'package:the_attendance_book_1/screens/teacherpage.dart';

import 'screens/choice.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Choice(),
            );
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: "Montserrat",
              ),
              home: WelcomePage(),
            );
          }
        });
  }
}
