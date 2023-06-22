import 'package:flutter/material.dart';

class MyContact extends StatelessWidget {
  const MyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: Center(
        child: Text(
          "Contact with us via ",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
