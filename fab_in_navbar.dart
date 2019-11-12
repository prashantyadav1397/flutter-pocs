// gesture and animation

import 'dart:core';

import 'package:flutter/material.dart';

class Square extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Squaregesture();
  }
}

class Squaregesture extends State<Square> {
  int numtaps = 0;
  int numdoubletaps = 0;
  int numlongpress = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Gesture and animations"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  child: Text("sample"),
                ),
                Tab(
                  child: Text("sample2"),
                ),
              ],
            ),
          ),
          body: Center(

            // raised button

            child: RaisedButton(
              child: Text("Back Home",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              elevation: 5.0,
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            // raised button closed 


          ),
          bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              color: Colors.grey,
              child: DefaultTabController(
                length: 4,
                child: TabBar(
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(
                        Icons.home,
                        color: Colors.black,
                        
                      ),
                      text: "demo",
                    ),
                    Tab(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
          
          ),
          floatingActionButton: FloatingActionButton(
          
           child: Icon(Icons.add_location),
            // label: Text("data"),
            onPressed: (() {
              setState(() {
                counter++;
                debugPrint("$counter");
                Navigator.pop(context);
              });
            }),
            tooltip: "Add button",
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
      ),
    );
  }
}
