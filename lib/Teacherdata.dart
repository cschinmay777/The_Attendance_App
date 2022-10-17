import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/teacherdetails.dart';

class TeacherData extends StatefulWidget {
  const TeacherData({Key? key}) : super(key: key);

  @override
  State<TeacherData> createState() => _TeacherDataState();
}

class _TeacherDataState extends State<TeacherData> {
  final _auth = FirebaseAuth.instance;

  Future<DocumentSnapshot> getTeacherData() async {
    DocumentSnapshot tdocs = await FirebaseFirestore.instance
        .collection('students')
        .doc('2yfgcK3bMfbvt9wXYtz3XTOoxSM2')
        .get();
    TeacherDetails.uid = _auth.currentUser!.uid;
    TeacherDetails.COC = tdocs.get('COC');
    TeacherDetails.PPL = tdocs.get('PPL');
    TeacherDetails.PBL = tdocs.get('PBL');
    TeacherDetails.M3 = tdocs.get('M3');
    TeacherDetails.M3_tut = tdocs.get('M3_tut');
    TeacherDetails.DSAL = tdocs.get('DSAL');
    TeacherDetails.MP = tdocs.get('MP');
    TeacherDetails.MPL = tdocs.get('MPL');
    TeacherDetails.SE = tdocs.get('SE');
    TeacherDetails.DSA = tdocs.get('DSA');
    TeacherDetails.role = tdocs.get('role');
    TeacherDetails.name = tdocs.get('name');

    // print(docs.get('name'));
    return tdocs;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTeacherData();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
