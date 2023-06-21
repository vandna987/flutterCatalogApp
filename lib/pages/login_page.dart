import "dart:ffi";

import "package:flutter/material.dart";
import "package:flutter_catalog/utils/routes.dart";

class LoginPage extends StatelessWidget {
  // const LoginPage({super.key});
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_label
    Color:
    Colors.white;
    return Material(
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter password", labelText: "password"),
                ),
                SizedBox(
                  height: 20,
                ),

                InkWell (
                  onTap: () async {
                    changeButton = true;
                    print("value is $changeButton");
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoute.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: changeButton ? 50 : 150,
                    // color: Colors.deepPurpleAccent,
                    alignment: Alignment.center,
                    child: changeButton ? Icon(Icons.done,color: Colors.white,)
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8)),
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
