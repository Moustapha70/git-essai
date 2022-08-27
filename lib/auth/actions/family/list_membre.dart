import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'db_family/database_family.dart';

class Menbres extends StatefulWidget {
  const Menbres({Key key}) : super(key: key);

  @override
  _MenbresState createState() => _MenbresState();
}

class _MenbresState extends State<Menbres> {
  Color coloration = Colors.white;
  List<Eleve>list_eleves = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: SizedBox(
              child: Table(
                columnWidths: const <int, TableColumnWidth>{
                  0:FlexColumnWidth(),
                  1:FlexColumnWidth(),
                  2:FlexColumnWidth(),
                  3:FlexColumnWidth(),
                  4:FlexColumnWidth(),
                },
                defaultColumnWidth: FlexColumnWidth(),
                children: [
                  TableRow(
                    children: [
                      entetebuild(text: "Nom",color: Colors.white),
                      entetebuild(text: "Prenom",color: Colors.white),
                      entetebuild(text: "Age",color: Colors.white),
                      entetebuild(text: "N°matricule",color: Colors.white),
                      entetebuild(text: "Option",color: Colors.white),
                    ],
                  ),...list_eleves.map((e) {
                    if(coloration == Colors.white){
                      coloration = Colors.grey;
                    }else{
                      coloration = Colors.white;
                    }
                    return TableRow(
                      decoration: BoxDecoration(color: coloration,),
                      children: [
                        listeleve(e.nom),
                        listeleve(e.Prenom),
                        listeleve(e.age),
                        listeleve(e.matricule),
                        Row(children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined),color: Colors.blue),
                          IconButton(onPressed: (){
                            list_eleves.remove(e);
                            setState(() {

                            });
                          }, icon: Icon(Icons.delete_outline_outlined),color: Colors.redAccent),
                        ],),
                      ],
                    );
                  })
                ],
              ),
            ),
          ),
        ),
        Text("hello"),
      ],
    );
  }
  Container listeleve(String e) => Container(child: Text(e),alignment: Alignment.center,height: 25,color: coloration,);
  Container entetebuild({String text, color}) => Container(child: Center(child: Text(text,style: TextStyle(fontSize: 15,color: color),)),color: Colors.blue,);
}
