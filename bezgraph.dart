import 'package:bezier_graph_monthly/temp_hum_model.dart';
import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';

// int durationcalc(DateTime d1, DateTime d2) {
//   Duration datediff = d2.difference(d1);
//   return datediff.inDays;
// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   final List<TempHumGraph> graphList = [
      TempHumGraph(
        dateTime: '2019-10-01T00:05:29',
        highValue: 24.89,
        lowValue: 23.5,
      ),
      TempHumGraph(
        dateTime: '2019-10-02T00:05:29',
        highValue: 24.89,
        lowValue: 23.5,
      ),
      TempHumGraph(
        dateTime: '2019-10-04T00:05:29',
        highValue: 24.89,
        lowValue: 23.5,
      ),
      TempHumGraph(
        dateTime: '2019-10-05T00:05:29',
        highValue: 25.89,
        lowValue: 24.5,
      ),
      TempHumGraph(
        dateTime: '2019-10-06T00:05:29',
        highValue: 24.89,
        lowValue: 23.5,
      ),
      TempHumGraph(
        dateTime: '2019-10-07T00:05:29',
        highValue: 23.89,
        lowValue: 25.5,
      ),
      TempHumGraph(
        dateTime: '2019-10-08T00:05:29',
        highValue: 24.89,
        lowValue: 23.5,
      ),
      TempHumGraph(
        dateTime: '2019-10-09T00:05:29',
        highValue: 21.89,
        lowValue: 22.5,
      ),
      TempHumGraph(
        dateTime: '2019-10-10T00:05:29',
        highValue: 24.89,
        lowValue: 23.5,
      ),
    ];
   
  buildGraphData() {
    highDataPoint = new List<DataPoint>();
    highDataPoint.clear();
    if (graphList != null) {
      for (var value in graphList) {
        print(DateTime.parse(value.dateTime));
        //cnvert the datetime string to DateTime Object
        highDataPoint.add(DataPoint<DateTime>(
            value: value.highValue, xAxis: DateTime.parse(value.dateTime)));
      }
    }
  }

  buildlowData(){
     lowDataPoint = new List<DataPoint>();
    lowDataPoint.clear();
    if (graphList != null) {
      for (var value in graphList) {
        print(DateTime.parse(value.dateTime));
        //cnvert the datetime string to DateTime Object
        lowDataPoint.add(DataPoint<DateTime>(
            value: value.lowValue, xAxis: DateTime.parse(value.dateTime)));
      }
    }
  }

  List<DataPoint> highDataPoint;

  List<DataPoint> lowDataPoint;

  @override
  void initState() {
    buildGraphData();
    buildlowData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Bez_graph"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            color: Colors.blueGrey,
            height: 400,
            width: 400,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: BezierChart(
                    bezierChartScale: BezierChartScale.WEEKLY,
                    fromDate: DateTime(2019, 10, 01),
                    toDate: DateTime.now(),
                    // selectedDate: toDate,
                    series: [
                      BezierLine(
                        lineColor: Colors.white,
                        label: "High",
                        onMissingValue: (dateTime) {
                          if (dateTime.month.isEven) {
                            return 10.0;
                          }
                          return 5.0;
                        },
                        data: highDataPoint,
                      ),
                      BezierLine(
                        lineColor: Colors.black,
                        label: "Low",
                        onMissingValue: (dateTime) {
                          if (dateTime.month.isEven) {
                            return 10.0;
                          }
                          return 5.0;
                        },
                        data: lowDataPoint,
                      ),
                    ],
                    config: BezierChartConfig(
                      verticalIndicatorStrokeWidth: 3.0,
                      displayYAxis: false,
                      showDataPoints: false,
                      pinchZoom: true,
                      verticalIndicatorColor: Colors.blue,
                      showVerticalIndicator: true,
                      backgroundGradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.white, Colors.blue],
                      ),
                      verticalIndicatorFixedPosition: true,
                      backgroundColor: Colors.blueGrey,
                      footerHeight: 40.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
