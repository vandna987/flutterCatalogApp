import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
          child: Text(
        "Welcome this is your profile",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      )),
    );
  }
}
