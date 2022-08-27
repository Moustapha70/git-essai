import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;



import 'mydata.dart';

class MyProvider extends ChangeNotifier{
  List<MyData> list = [];
  var timeSeries;
  var pieSeries;

  Future addDataTolist()async{
    this.list.add(
        MyData(
          dateTime: DateTime.now(),
          value: 0.0,
        )
    );
    this.notifyListeners();
  }

  Future setDateOnData(MyData data, DateTime dateTime) async{
    int index = this.list.indexOf(data);
    this.list[index].dateTime = dateTime;
    this.notifyListeners();
  }
  Future buildGraphData()async{
    if(this.list.isEmpty)
      return;
    this.timeSeries = [
      charts.Series<MyData,DateTime>(
        id: 'timeSeriesChart',
        domainFn: (MyData data, _) => data.dateTime,
        measureFn: (MyData data, _) => data.value,
        data: list,
      )
    ];
    this.pieSeries = [
      charts.Series(
          id: 'pieSeriesChart',
          domainFn: (MyData data, _) => data.dateTime.day,
          measureFn: (MyData data, _) => data.value,
          data: list
      )
    ];
    this.notifyListeners();
  }

}