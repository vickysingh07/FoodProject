import 'package:food_project/file.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget _allCategories({@required String images, @required String title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 58),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            //width: MediaQuery.of(context).size.width / 2,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage(images),
                ),
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _categories2(
      {@required String title,
      @required double length,
      @required Color color}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      width: length,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[500],
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
        leading: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _allCategories(images: 'images/drink2.png', title: 'DRINK'),
              _allCategories(images: 'images/pizza.png', title: 'PIZZA'),
              _allCategories(images: 'images/burger.png', title: 'BURGER'),
              _allCategories(images: 'images/sandwich.png', title: 'SANDWICH'),
              _allCategories(images: 'images/icecream.png', title: 'ICE-CREAM')
            ],
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        toolbarHeight: 161,
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _categories2(
                      title: 'CAKE', length: 65, color: Colors.pink[300]),
                  _categories2(
                      title: 'PIE', length: 55, color: Colors.purple[300]),
                  _categories2(
                      title: 'ICE CREAM', length: 101, color: Colors.blue[500]),
                  _categories2(
                      title: 'CANNOLI',
                      length: 85,
                      color: Colors.cyanAccent[400]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
