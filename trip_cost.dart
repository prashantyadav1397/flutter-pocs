import 'package:flutter/material.dart';

class TripCost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TC();
}

class TC extends State<TripCost> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Trip Cost",
      theme: new ThemeData(primarySwatch: Colors.brown,
      ),
      
    );
  }
}
