import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AOenregistre extends StatefulWidget {
  const AOenregistre({Key key}) : super(key: key);

  @override
  _AOenregistreState createState() => _AOenregistreState();
}

class _AOenregistreState extends State<AOenregistre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Row(
          children: [
            Container(
              width: 70,
              color: Colors.blue,
              child: Column(
                children: [
                  SizedBox(
                    height: 70,
                    child:Container(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      inconbutton(icon: Icons.home_filled,color:Colors.white,onpres: (){}),
                      Text("Home",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      inconbutton(icon: Icons.one_k,color:Colors.white,onpres: (){}),
                      Text("postulant",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      inconbutton(icon: Icons.add_shopping_cart_rounded,color:Colors.white,onpres: (){}),
                      Text("Fornisseur",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      inconbutton(icon: Icons.clean_hands,color:Colors.white,onpres: (){}),
                      Text("Les offres",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      inconbutton(icon: Icons.person_outline,color:Colors.white,onpres: (){}),
                      Text("Les offres",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),

                ],
              ),
            ),

//gestion de commande
            Container(
              child: Column(
                children: [
                  Container(
                    height: 40,
                    color: Colors.blue,
                    child: Center(child: Text("gestion de commande",style: const TextStyle(fontSize: 25,color: Colors.white)),),
                  ),

                  Expanded(child: Container(

                    child: Container(
                      color: Colors.white,
                      width: 300,
                      height: 200,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 20,),
                                      Center(child: Text("Formulaire d'enregistrement AO",style: TextStyle(fontWeight: FontWeight.bold),),),
                                      SizedBox(height: 20,),
                                      champtext("Types AO"),
                                      SizedBox(height: 20,),
                                      champtext("Date AO"),
                                      SizedBox(height: 20,),
                                      champtext("Numero AO"),
                                      SizedBox(height: 20,),
                                      champtext("Fillialle/holding s.a"),
                                      SizedBox(height: 20,),
                                      champtext("Plan de Passation du Marche N°"),
                                      SizedBox(height: 10,),

                                  ],
                                  ),
                                SizedBox(height: 20,),
                                RaisedButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                  color: Colors.blue,child: Text("Envoyé"),
                                ),
                              ],
                            ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  IconButton inconbutton({icon, Color color = Colors.white,onpres}) => IconButton(onPressed: onpres,icon: Icon(icon),iconSize: 45,);

  TextFormField champtext(String text, ) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
      ),
    );
  }

}
