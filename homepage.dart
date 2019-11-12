import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<charts.Series<Sales, double>> _seriesLineData;

// Sales s => new Sales(12,12);
// List<Sales> _saleslist=[];

// Sales obj = Sales(12, 12);
// _saleslist.add(obj);

  _generateData() {
    var linesalesdata2 = [
     //new Sales(0, 0),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(3.5, 40),

      new Sales(4, 45),
      new Sales(5, 10),
      new Sales(6, 47),
      // new Sales(7, null),
      // new Sales(8, null)
    ];

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Colors.blue),
        id: 'Air Pollution',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _seriesLineData = List<charts.Series<Sales, double>>();
  //   _generateData();
  // }

  @override
  void initState() {
    super.initState();
    _seriesLineData = List<charts.Series<Sales, double>>();
    _generateData();
  }

  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff1976d2),
          title: Text('Flutter Charts'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            height: 400,
            width: 400,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: charts.LineChart(_seriesLineData,
                      defaultRenderer: new charts.LineRendererConfig(
                        includeArea: true,
                        stacked: true,
                        includePoints: true,
                      ),
                      animate: true,
                      behaviors: [charts.PanAndZoomBehavior()]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Sales {
  double yearval;
  double salesval;

  Sales(this.yearval, this.salesval);
}

