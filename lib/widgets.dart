import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'screens/LoginPage.dart';

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
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
    return LoginPage();
  }));
}
