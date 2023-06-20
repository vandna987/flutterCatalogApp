import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int day = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Learning"),
      ),
      body: Container(
        child: Center(
            child: Text(
          "Welcome to $day my new App",
          style: TextStyle(color: Color.fromRGBO(32, 2, 49, 1)),
        )),
      ),
      drawer: Drawer(),
    );
  }
}
