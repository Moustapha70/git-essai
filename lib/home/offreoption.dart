import 'package:cours/auth/actions/offres/gestion_offres/ajout_offre.dart';
import 'package:cours/db/db_offre.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OffreOption extends StatefulWidget {
  const OffreOption({Key key}) : super(key: key);

  @override
  _OffreOptionState createState() => _OffreOptionState();
}

class _OffreOptionState extends State<OffreOption> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          addmode=true;
                        });
                      }, child: const Text("Ajouter")),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Commande")),

                ],
              ),
            ],
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [

                            Table(
                                columnWidths: const <int, TableColumnWidth>{
                                  0: FlexColumnWidth(),
                                  1: FlexColumnWidth(),
                                  2: FlexColumnWidth(),
                                  3: FlexColumnWidth(),
                                  4: FlexColumnWidth(),
                                  5: FlexColumnWidth(),


                                },
                                defaultColumnWidth: const FlexColumnWidth(),
                                children:[
                                  TableRow(children: [
                                    entetemodel(text: "Premier"),
                                    entetemodel(text: "Deuxieme"),
                                    entetemodel(text: "Troisieme"),
                                    entetemodel(text: "Quatrieme"),
                                    entetemodel(text: "Option"),

                                  ]), ...list_offre.map((e) {
                                    if (colorline == Colors.white) {
                                      colorline = Colors.grey.shade100;
                                    } else {
                                      colorline = Colors.white;
                                    }
                                    return TableRow(
                                        decoration: BoxDecoration(
                                          color: colorline,
                                        ),
                                        children: [
                                          listItem(e.one),
                                          listItem(e.two),
                                          listItem(e.three),
                                          listItem(e.four),

                                          Row(
                                            children: [
                                              IconButton(icon: Center(child: Icon(Icons.edit,color: Colors.blue)),onPressed: (){

                                                }),
                                              SizedBox(width: 2,),
                                              IconButton(icon: Icon(Icons.delete,color: Colors.red),onPressed: (){
                                                list_offre.remove(e);
                                                setState(() {

                                                });
                                              }),
                                            ],
                                          ),
                                        ]);
                                  })]
                            )
                          ],
                        )),
                    if (addmode)
                      Flexible(
                        flex: 1,
                        child: Ajou_Offre(onAdd: () {
                          setState(() {
                            addmode=false;
                          });
                        },),
                      )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Container entetemodel({String text}) => Container(child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 15),)),color: Colors.blue.shade400,height: 30);

  Container listItem(String e) {
    return Container(alignment: Alignment.center, child: Text(e), height: 50);
  }

  bool addmode = false;
  Color colorline = Colors.white;
}
