import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color:
    Colors.white;
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_page.png",
            fit: BoxFit.cover,
          )
        ],
      ),
      //     child: Center(
      //   child: Text(
      //     "Login Page",
      //     style: TextStyle(
      //         fontSize: 20,
      //         color: Colors.deepPurple,
      //         fontWeight: FontWeight.bold),
      //   ),
      // )
    );
  }
}
