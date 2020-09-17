import 'package:flutter/material.dart';
import 'package:food_project/file.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                child: Image.asset(
                  "images/foodlogo.png",
                  height: 150,
                  width: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Sign Up Free Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: Column(
                      children: [
                        Form(
                            key: _formKey,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Enter UserName",
                                        labelText: "UserName"),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return "Please Enter Username";
                                      }
                                    },
                                  ),
                                  SizedBox(height: 10.0),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Email",
                                        labelText: "Email"),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return "Please Enter Email";
                                      }
                                    },
                                  ),
                                  SizedBox(height: 10.0),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        hintText: "Enter Password",
                                        labelText: "Password"),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return "Please Enter Password";
                                      }
                                    },
                                  ),
                                  SizedBox(height: 10.0),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        hintText: "Enter Phone Number",
                                        labelText: "Phone"),
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return "Please Enter Phone Number";
                                      }
                                    },
                                  )
                                ],
                              ),
                            )),
                        SizedBox(height: 20.0),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            width: 250,
                            height: 35,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              elevation: 15,
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  Constants.prefs.setBool("loggedIn", true);
                                  Navigator.pushReplacementNamed(
                                      context, "/home");
                                }
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              color: Colors.deepPurple[500],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}