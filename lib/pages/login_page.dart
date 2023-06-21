import "dart:ffi";

import "package:flutter/material.dart";
import "package:flutter_catalog/utils/routes.dart";

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // const LoginPage({super.key});
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      changeButton = true;
      // print("value is $changeButton");
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoute.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_label
    Color:
    Colors.white;
    return Material(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ), //we can use this for spacing
            Text(
              "Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "userName"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return ("username cannot be empty!");
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter password", labelText: "password"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return ("password cannot be empty!");
                      } else if (value != null && value.length < 6) {
                        return ("password should contain atleast 6 letters");
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    child: InkWell(
                      onTap: () => {moveToHome(context)},
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        // color: Colors.deepPurpleAccent,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                  //   onPressed: () =>
                  //       {Navigator.pushNamed(context, MyRoute.homeRoute)},
                  // )
                ],
              ),
            )
          ],
        ),
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
