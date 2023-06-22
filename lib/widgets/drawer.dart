import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            const DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 83, 44, 150)),
                    accountName: Text("vandnaPatidar"),
                    accountEmail: Text("patidar@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://media.licdn.com/dms/image/C4D03AQHBgEfLASmzyg/profile-displayphoto-shrink_800_800/0/1653885969560?e=2147483647&v=beta&t=QHVme92fDGdEBEe0PO6nFruewW_KykKJ--rd9aAS8hY"),
                    ))),
            ListTile(
              onTap: () => {Navigator.pushNamed(context, MyRoute.homeRoute)},
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () => {Navigator.pushNamed(context, MyRoute.profileRoute)},
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              onTap: () => {Navigator.pushNamed(context, MyRoute.contactRoute)},
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Contact",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
