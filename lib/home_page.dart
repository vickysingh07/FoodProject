import 'package:food_project/file.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
        leading: Container(
          height: 20,
        ),
        title: Container(
          child: Align(
            alignment: Alignment(1.0, -0.7),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(80, 1, 0, 70),
              child: Image.asset(
                "images/foodlogo.png",
                // fit: BoxFit.cover,
                height: 50,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Constants.prefs.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, "/login");
              })
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        toolbarHeight: 161,
      ),
      body: Container(),
    );
  }
}
