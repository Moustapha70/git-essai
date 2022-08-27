
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'myproviders.dart';


class MyHomePage extends StatelessWidget{
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(),
      child: Consumer<MyProvider>(
        builder: (context,provider,child){
          return Scaffold(

            body: Column(
                children:[
                  IconButton(
                    icon: Icon(Icons.add),color: Colors.blue,iconSize: 30,
                    onPressed: (){
                      provider.addDataTolist();
                    },
                  ),
                  Expanded(
                    child: ListView(
                      children: provider.list.map((data) =>
                          data.getView(
                              onClick: () async{
                                DateTime dateTime = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2011),
                                    lastDate: DateTime(2021)
                                );
                                if (dateTime==null)
                                  return;
                                provider.setDateOnData(data,dateTime);
                              }
                          )
                      ).toList(),
                    ),
                  ),
                  FlatButton(
                    onPressed: (){
                      provider.buildGraphData();
                    },
                    child: Text("Calculer"),color: Colors.blue,height: 40,
                  ),
                  if(provider.timeSeries != null && provider.pieSeries !=null)

                    Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child:(
                                  charts.TimeSeriesChart(
                                    provider.timeSeries,
                                    defaultRenderer: charts.BarRendererConfig<DateTime>(),
                                  )
                              ),
                            ),
                            Expanded(
                              child:(
                                  charts.PieChart(
                                      provider.pieSeries
                                  )
                              ),
                            ),
                          ],
                        ) )
                ]
            ),
          );
        },
      ),
    );
  }
  }
