import 'package:flutter/material.dart';
import 'package:food_project/file.dart';

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
                  backgroundImage: AssetImage(
                    images,
                  ),
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 1, 0, 25),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 30,
        width: length,
        child: RaisedButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.yellow[500],
          title: Text("Hungry Time App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.pink,
              )),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.pink,
                ),
                onPressed: () {
                  Constants.prefs.setBool("loggedIn", false);
                  Navigator.pushReplacementNamed(context, "/login");
                }),
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 212,
              decoration: BoxDecoration(
                  color: Colors.deepPurple[500],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0))),
              //color: Colors.deepPurple[500],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(160, 2, 2, 2),
                    child: Image.asset(
                      "images/foodlogo.png",
                      //fit: BoxFit.cover,
                      height: 50,
                    ),
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _allCategories(
                              images: 'images/drink2.png', title: 'DRINK'),
                          _allCategories(
                              images: 'images/pizza.png', title: 'PIZZA'),
                          _allCategories(
                              images: 'images/burger.png', title: 'BURGER'),
                          _allCategories(
                              images: 'images/sandwich.png', title: 'SANDWICH'),
                          _allCategories(
                              images: 'images/icecream.png', title: 'ICE-CREAM')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                        title: 'ICE CREAM',
                        length: 101,
                        color: Colors.blue[500]),
                    _categories2(
                        title: 'CANNOLI',
                        length: 85,
                        color: Colors.cyanAccent[400]),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(22, 0, 0, 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Most Popular",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 380,
              width: 320,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: ListView(
                children: [
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  //backgroundColor: Colors.white,
                                  radius: 21,
                                  backgroundImage:
                                      AssetImage('images/mark.jpg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Mark Zuckerberg",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 101,
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 12,
                                  color: Colors.red[700],
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "160",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          Image(
                            image: AssetImage('images/p5.jpg'),
                            height: 300,
                            width: 300,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Pizza Margherita",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                      size: 13,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 380,
              width: 320,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: ListView(
                children: [
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 21,
                                  backgroundImage: AssetImage('images/jan.png'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Jan Koum",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 131,
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 12,
                                  color: Colors.red[700],
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  "170",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          Image(
                            image: AssetImage('images/p5.jpg'),
                            height: 300,
                            width: 300,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Pizza Margherita",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                      size: 13,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  widget({IconButton child}) {}
}
