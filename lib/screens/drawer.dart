import 'package:flutter/material.dart';
import 'package:the_attendance_book_1/screens/userdetails.dart';
import 'package:the_attendance_book_1/widgets.dart';
// import 'package:flutter_app_learning/profile.dart';
// import 'package:flutter_app_learning/routes.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 70,
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "${UserDetails.name}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text("Home"),
            leading: TextButton(
              child: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Signout"),
            leading: TextButton(
              child: Icon(Icons.account_circle),
              onPressed: () {
                logout(context);
              },
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Contact"),
            leading: TextButton(
              child: Icon(Icons.contact_page),
              onPressed: () {},
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
