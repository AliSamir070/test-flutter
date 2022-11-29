import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_flutter/show_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String data = '';

  int myIndex = 0;
  List<Widget> screens = [
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
      child: Text('Home' , style: TextStyle(color: Colors.white),),
    ),
    Container(
      color: Colors.orange,
      width: double.infinity,
      height: double.infinity,
      child: Text('Add' , style: TextStyle(color: Colors.white),),
    ),
    Container(
      color: Colors.amberAccent,
      width: double.infinity,
      height: double.infinity,
      child: Text('Edit' , style: TextStyle(color: Colors.white),),
    ),
    Container(
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
      child: Text('Search' , style: TextStyle(color: Colors.white),),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home'),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: myIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "Add"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit),
                label: "Edit"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search"
            ),
          ],
          onTap: (index){
            myIndex = index;
            setState((){});
          },
      ),
      body:InkWell(
          onTap: (){
            Navigator.pushNamed(context, ShowScreen.routename);
          },
          child: screens[myIndex]
      ),
    );
  }
}
