import 'package:flutter/material.dart';
import 'package:food_project/file.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food App"), actions: <Widget>[
        IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Constants.prefs.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, "/login");
            })
      ]),
      body: Container(),
    );
  }
}
