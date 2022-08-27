

/*import 'package:cours/auth/actions/offres/commande/commande.dart';
import 'package:cours/auth/actions/offres/gestion_offres/ajout_offre.dart';
import 'package:cours/auth/actions/offres/gestion_offres/moule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../authentification/connecxion.dart';
import '../fournisseur/fournisseur.dart';
import '../home/grafique.dart';
import '../postulant/postulants.dart';

class Offres extends StatefulWidget {
  const Offres({Key key}) : super(key: key);

  @override
  _OffresState createState() => _OffresState();
}

class _OffresState extends State<Offres> {
  List<FormulaireOffres> list_formulaire = [];
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
                      child: Container(
                              height: 600,
                              width: 900,
                              color: Colors.white,
                              child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          FlatButton(onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Ajou_Offre()));
                                          }, child: Text("Nouveau Offre"),color: Colors.green,),
                                          SizedBox(width: 5,),
                                          FlatButton(onPressed: (){}, child: Text("desactiver Offre"),color: Colors.yellow,),
                                          SizedBox(width: 5,),
                                          FlatButton(onPressed: (){}, child: Text("Spprimer Offre"),color: Colors.redAccent,),
                                          SizedBox(width: 5,),
                                          FlatButton(onPressed: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Commandes()));
                                          }, child: Text("commande"),color: Colors.blue,),
                                        ],
                                      ),
                                      // ICI LISTES DES OFFRES
                                      SizedBox(height: 10,),
                                      Container(
                                        color: Colors.blue,
                                        child: ListView.builder(
                                          itemCount: list_formulaire.length,
                                          itemBuilder: (context,a){
                                            final element = list_formulaire[a];
                                            return MouleOffres(formulaireOffres: element,delete: (){
                                              setState(() {
                                                list_formulaire.removeAt(a);
                                              });
                                            },);
                                          },
                                          shrinkWrap: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ),
                           //E
                         //E
                       //E
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
