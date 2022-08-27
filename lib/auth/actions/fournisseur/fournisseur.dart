

/*import 'package:cours/auth/actions/fournisseur/ajouter/enregistrement.dart'   ;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../db/user.dart';
import '../../authentification/connecxion.dart';

import '../offres/les_offres.dart';
import '../postulant/postulants.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ajouter/ajout_fourniseur.dart';
import 'ajouter/enregistrement.dart';

class Fournisseur extends StatefulWidget {
  const Fournisseur({Key key}) : super(key: key);

  @override
  _FournisseurState createState() => _FournisseurState();
}

class _FournisseurState extends State<Fournisseur> {
//  List<Element> list_element = [];
bool addevent=false;
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
                      child: Image.asset("assets/images/Uie.jpg"),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      Container(child: inconbutton(icon: Icons.home_filled,color:Colors.white,onpres: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Grphique()));
                      }),color: Colors.white.withOpacity(0.5),),
                      Text("Home",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      inconbutton(icon: Icons.one_k,color:Colors.white,onpres: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const Postulants()));
                      }),
                      Text("postulant",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      inconbutton(icon: Icons.add_shopping_cart_rounded,color:Colors.white,onpres: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Fournisseur()));
                      }),
                      Text("Fornisseur",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      inconbutton(icon: Icons.clean_hands,color:Colors.white,onpres: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Offres()));
                      }),
                      Text("Les offres",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    height: 80,
                    child: Column(children: [
                      inconbutton(icon: Icons.person_outline,color:Colors.white,onpres: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Connecxion()));
                      }),
                      Text("Utilisateur",style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                    ),
                  ),

                ],
              ),
            ),


//gestion de commande
            Container(
              child: Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                      child: Container(
                        color: Colors.blue,
                        child: Center(child: Text("gestion de commande",style: const TextStyle(fontSize: 25,color: Colors.white)),),
                      ),
                    ),
                    SizedBox(height: 27),
                    SizedBox(
                      child: Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 600,
                              width: 900,
                              color: Colors.white,
                              child: Center(
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FlatButton(onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Enregistrement()));
                                          }, child: Text("ajouter fournisseur"),color: Colors.green,),
                                          SizedBox(width: 5,),
                                          FlatButton(onPressed: (){}, child: Text("modifier fournisseur"),color: Colors.yellow,),
                                          SizedBox(width: 5,),
                                          FlatButton(onPressed: (){}, child: Text("supprimer fournisseur"),color: Colors.redAccent,),
                                        ],
                                      ),

                                     SizedBox(height: 20),
                                     Flex(direction: Axis.horizontal,
                                     children: [
                                       ListView.builder(
                                         itemCount: list_user.length,
                                         itemBuilder: (context, i){
                                           return Column(children: [],);
                                         },
                                         shrinkWrap: true,
                                       ),

                                     ],)
                                      // ICI LISTES DES FOURNISSEURS
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  IconButton inconbutton({icon, Color color = Colors.white,onpres}) => IconButton(onPressed: onpres,icon: Icon(icon),iconSize: 45,);
}*/
