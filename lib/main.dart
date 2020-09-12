import 'package:flutter/material.dart';
import 'package:food_project/file.dart';
import 'package:food_project/home_page.dart';
import 'package:food_project/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      routes: {"/home": (context) => HomePage()},
    ),
  );
}
