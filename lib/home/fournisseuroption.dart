import 'dart:html';

import 'package:cours/auth/actions/fournisseur/ajouter/enregistrement.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../db/user.dart';
import '../db/user.dart';
import '../db/user.dart';
import '../db/user.dart';
import '../db/user.dart';

class FournisseurOption extends StatefulWidget {
  Function onAdd;
   FournisseurOption({Key key,this.onAdd()}) : super(key: key);

  @override
  _FournisseurOptionState createState() => _FournisseurOptionState();
}

class _FournisseurOptionState extends State<FournisseurOption> {
  TextEditingController nomcontroller = TextEditingController();
  TextEditingController prenomcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController telcontroller = TextEditingController();
  TextEditingController secteurcontroller = TextEditingController();
  User userEdite;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    onPressed: () {}, child: const Text("Testbutoin")),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Testbutoin"))
              ],
            ),
          ],
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
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
                                  entetemodel(text: "Prenom"),
                                  entetemodel(text: "Nom"),
                                  entetemodel(text: "Email"),
                                  entetemodel(text: "Tel"),
                                  entetemodel(text: "Secteur"),
                                  entetemodel(text: "Option"),

                                ]), ...list_user.map((e) {
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
                                      listItem(e.prenom),
                                      listItem(e.nom),
                                      listItem(e.email),
                                      listItem(e.tel),
                                      listItem(e.secteur),
                                      Row(
                                        children: [
                                          Center(
                                            child: IconButton(icon: Center(child: Icon(Icons.edit,color: Colors.blue)),onPressed: (){

                                              addmode=true;
                                              userEdite =e;
                                              setState(() {

                                              });
                                            }),
                                          ),
                                          SizedBox(width: 2,),
                                          IconButton(icon: Icon(Icons.delete,color: Colors.red),onPressed: (){
                                            list_user.remove(e);
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
                      child: Enregistrement(close:() {
                        setState(() {
                          addmode=false;
                        });
                      }, userEdite: userEdite,onAdd: (useron) {
                        if(userEdite==null){
                          list_user.add(useron);
                        }else{
                          list_user= list_user.map((e) {
                            if(e==userEdite){
                              return useron;
                            }else{
                              return e;
                            }
                          }).toList();
                        }
                        setState(() {
                          addmode=false;
                          userEdite=null;
                        });

                      },),
                    )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Container entetemodel({String text}) => Container(child: Center(child: Text(text,style: TextStyle(color: Colors.white,fontSize: 15),)),color: Colors.blue.shade400,height: 30);

  Container listItem(String e) {
    return Container(alignment: Alignment.center, child: Text(e), height: 50);
  }

  bool addmode = false;
  Color colorline = Colors.white;
}
