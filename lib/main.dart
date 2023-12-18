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
          padding: EdgeInsets.all(20), margin: EdgeInsets.all(5),
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