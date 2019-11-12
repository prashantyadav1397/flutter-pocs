import 'package:flutter/material.dart';

class TabDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TabDemoCode();
}

class TabDemoCode extends State<TabDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Tab View "),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: "Tab One",
                  ),
                  Tab(
                    text: "Tab two",
                  ),
                  Tab(
                    text: "Tab Three",
                  ),
                ],
              )),
          body: TabBarView(
            children: <Widget>[
              TabOne(),
              TabTwo(),
              TabThree(),
            ],
          ),
        ),
      ),
    );
  }
}

class TabOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: new Center(
          child: Text("Tab One Data"),
        ),
        floatingActionButton:
            // Builder(
            //   builder: (BuildContext context) {
            FloatingActionButton(
          onPressed: (() {}),
          child: Icon(Icons.build),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
        ),
        //   },
        // ),
      ),
    );
  }
}

class TabTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Form(
      autovalidate: true,
      child: new Center(
        child: new Container(
          child: TextFormField(
          decoration: const InputDecoration(
            icon:Icon( Icons.phone),
            hintText: "Ex- +91 88800 12345",
            labelText: "Phone Number",
          ),
            // keyboardType: TextInputType.number,
          ),
          padding: EdgeInsets.only(left: 10, right: 10),
        ),
      ),
    );
  }
}

class TabThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: new Center(
          child: Text("Tab Three Data"),
        ),
        floatingActionButton:
            // Builder(
            //   builder: (BuildContext context) {
            FloatingActionButton(
          onPressed: (() {}),
          child: Icon(Icons.search),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
        ),
        //   },
        // ),
      ),
    );
  }
}
