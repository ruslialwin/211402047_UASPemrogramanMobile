// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text("Food App"), backgroundColor: Colors.orangeAccent,),
        body: Container(
          padding: EdgeInsets.all(20), margin: EdgeInsets.all(5), color: Colors.white70,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Hello, Joana!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                      Text("What do you want to cook today?", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(padding: EdgeInsets.only(left : 100)),
                      Icon(Icons.account_circle, size: 50.0,),
                    ],
                  ),
                ],
              ),
              Card(
                margin: EdgeInsets.only(top: 20), color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(10,10,10,15)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Recipes recommendation", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text("Get your personalized recipes", style: TextStyle(fontSize: 16)),
                            Text("recommendation in a 4 steps", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left : 100)),
                            Icon(Icons.food_bank, size: 60.0,),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(10,0,10,80)),
                        Column(
                          children: <Widget>[
                            Container(
                              width: 150,
                              height: 40,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.orangeAccent),
                                onPressed: () {},
                                child: Text("Get Started", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black))
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(left: 185)),
                           Container(
                              width: 150,
                              height: 40,
                              child: OutlinedButton(
                                onPressed: () {},
                                child: Text("Skip", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black))
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                       children: <Widget>[
                        Column(
                          children: [
                            Text("Popular Recipes", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 225)),
                            TextButton(
                              style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                              onPressed: () {},
                              child: Text( "See all", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orangeAccent))
                            ),
                          ],
                        ),
                       ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Recipe(
                        image: 'lib/img/one.jpg',
                        name: 'Spaghetti Bolognese',
                        type: 'Pasta',
                        time: '30-45 Minutes',
                        difficulty: 'Medium',
                        chef: 'Miriam Belina',
                      ),
                      SizedBox(width: 35),
                      Recipe(
                        image: 'lib/img/two.jpg',
                        name: 'Classic Beef Steak',
                        type: 'Meat',
                        time: '30-45 Minutes',
                        difficulty: 'Easy',
                        chef: 'James Nikidaw',
                      ),
                    ],
                  ),
                ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Row(
                       children: <Widget>[
                        Column(
                          children: [
                            Text("Popular Creator", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 225)),
                            TextButton(
                              style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                              onPressed: () {},
                              child: Text( "See all", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.orangeAccent))
                            ),
                          ],
                        ),
                       ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Creator(
                          name: 'James Nikidaw',
                          recipe: '124',
                          like: '41391',
                        ),
                        SizedBox(width: 35),
                        Creator(
                          name: 'Miriam Belina',
                          recipe: '98',
                          like: '7323',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: 'recipe',
            )
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orangeAccent,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}

class Recipe extends StatelessWidget {
  final String image;
  final String name;
  final String type;
  final String time;
  final String difficulty;
  final String chef;

  Recipe({
    required this.image,
    required this.name,
    required this.type,
    required this.time,
    required this.difficulty,
    required this.chef,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 255, 225, 150),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              image,
              width: 200,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8,8,8,0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              type,
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.timer,
                  size: 14,
                  color:  Colors.grey,
                ),
                SizedBox(width: 4),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 12,
                     fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8,0,8,0),
            child: Row(
              children: [
                Icon(
                  Icons.score,
                  size: 14,
                  color: Colors.grey,
                ),
                SizedBox(width: 4),
                Text(
                  difficulty,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: 14,
                  color: Color.fromARGB(255, 129, 129, 129),
                ),
                SizedBox(width: 4),
                Text(
                  chef,
                  style: TextStyle(
                    fontSize: 12,
                     fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Creator extends StatelessWidget {
  final String name; 
  final String recipe; 
  final String like; 
  Creator({
    required this.name,
    required this.recipe,
    required this.like,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), color: Color.fromARGB(255, 244, 244, 222),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.person, size: 50,),
              ],
            )
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8,0,8,0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8,4,8,0),
            child: Row(
              children: [
                Icon(
                  Icons.book, 
                  size: 14,
                  color: Color.fromARGB(255, 107, 107, 107),
                ),
                SizedBox(width: 2),
                Text(
                  recipe, 
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 107, 107, 107),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8,2,8,8),
            child: Row(
              children: [
                Icon(
                  Icons.favorite, 
                  size: 14,
                  color: Color.fromARGB(255, 107, 107, 107),
                ),
                SizedBox(width: 2),
                Text(
                  like,
                  style: TextStyle(
                    fontSize: 12,
                    color:  Color.fromARGB(255, 107, 107, 107),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}