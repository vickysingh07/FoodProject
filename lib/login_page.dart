import 'package:flutter/material.dart';
import 'package:food_project/file.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              Text(
                "Sign Up Free Account",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    child: Column(
                      children: [
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter UserName",
                                    labelText: "UserName"),
                              ),
                              SizedBox(height: 10.0),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Email",
                                    labelText: "Email"),
                              ),
                              SizedBox(height: 10.0),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    labelText: "Password"),
                              ),
                              SizedBox(height: 10.0),
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Phone",
                                    labelText: "Phone"),
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
                                Constants.prefs.setBool("loggedIn", true);
                                Navigator.pushReplacementNamed(
                                    context, "/home");
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              color: Colors.purple[700],
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
