import 'package:flare_flutter/flare_actor.dart';

import 'package:flutter/material.dart';

class Flr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Flare animation poc"),
        ),
        body: new Center(
          child: new Container(
            // height: 300,
            // width: 300,
           
            child: FlareActor(
              "lib/Images/Loading_circular.flr",
              // isPaused: false,
              // controller: FlareController.,
              animation: "Circular_load",
              alignment: Alignment.bottomCenter,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
