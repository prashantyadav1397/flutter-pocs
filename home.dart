import 'package:flutter/material.dart';


import 'fab_in_navbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final barcolor = const Color(0xFF000000);
    // final appcolor = const Color(0xFF);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: /*appcolor,*/Colors.lightBlueAccent,
        body: new Center(
          child: Container(
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     begin: Alignment.bottomLeft,
            //     end: Alignment(
            //         0.8, 0.0), // 10% of the width, so there are ten blinds.
            //     colors: [Colors.black, Colors.blueGrey], // whitish to gray
            //     tileMode:
            //         TileMode.mirror, // repeats the gradient over the canvas
            //   ),
            // ),
            // margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Row column test data1",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Row column test data2",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.brown,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Row column test data3",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.brown,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Row column test data4",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.brown,
                              fontWeight: FontWeight.bold)),
                    )
                  ],
                ),
                ImageAssetsDemo(),
                ButtonPressDemo(),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: barcolor,
          title: Text("Row Col Image Buttons"),
        ),
      ),
    );
  }
}

class ImageAssetsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage solarasset = AssetImage("lib/Images/solar.png");
    Image image = Image(image: solarasset, width: 300.0, height: 300.0);
    return Center(child: Container(child: image));
  }
}

class ButtonPressDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        child: Text("Solar System",
            style: TextStyle(color: Colors.white, fontSize: 20)),
        elevation: 5.0,
        color: Colors.black,
        onPressed: () {
          // solar(context);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Square()));
        },
      ),
    );
  }

  void solar(BuildContext context) {
    var alret = AlertDialog(
      title: Text("About Solar System"),
      content: Text("Solar system contians 9 planets"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alret;
        });
  }
}

// class ListViewDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         ListTile(
//           leading: Icon(Icons.build),
//           title: Text("Build"),
//         )
//       ],
//     );
//   }
// }
