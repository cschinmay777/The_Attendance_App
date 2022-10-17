import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/LoginPage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  // stops: [
                  //   0.1,
                  //   0.4,
                  //   0.6,
                  //   0.9,
                  // ],
                  colors: [
                    Color(0xFFB3E5FC),
                    Color(0xFF4FC3F7),
                    Color(0xFF039BE5),
                    Color(0xFF01579B)
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.25),
                        child: Image(
                          image: AssetImage('images/logo.jpg'),
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Text(
                      //   'Scan your attendance at',
                      //   style: TextStyle(
                      //     fontFamily: 'Ropa Sans',
                      //     fontSize: 20,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      Center(
                        child: Text(
                          'The Attendance Book',
                          style: TextStyle(
                            fontFamily: 'Ropa Sans',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return LoginPage();
                            }));
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
