/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../authentification/connecxion.dart';
import '../../fournisseur/fournisseur.dart';
import '../../home/grafique.dart';
import '../../offres/les_offres.dart';
import '../../postulant/postulants.dart';


class Commandes extends StatefulWidget {
  const Commandes({Key key}) : super(key: key);

  @override
  _CommandesState createState() => _CommandesState();
}

class _CommandesState extends State<Commandes> {
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
                    SizedBox(
                      child: Expanded(
                        flex: 3,
                        child: Container(
                          height: 600,
                          width: 900,
                          color: Colors.white,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.person),
                                title: Text("Infos client"),
                                subtitle: Column(children: const [
                                  Text("Nom: Coulibaly"),
                                  Text("prenom: Moussa"),
                                  Text("ID: PRV"),
                                ],),
                              ),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Icon(Icons.person),
                                title: Text("Infos client"),
                                subtitle: Column(
                                  children: const [
                                  Text("Nom: Traore"),
                                  Text("prenom: Issiaka"),
                                  Text("ID: MDR"),
                                ],),
                              ),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Icon(Icons.monetization_on_outlined),
                                title: Text("Infos produit"),
                                subtitle: Column(children: const [
                                  Text("Type: Cereale"),
                                  Text("Nom: RIZ"),
                                  Text("Prix/KG: 100 FCFA"),
                                ],),
                              ),
                              SizedBox(height: 10,),
                              ListTile(
                                leading: Icon(Icons.monetization_on_outlined),
                                title: Text("Infos produit"),
                                subtitle: Column(children: const [
                                  Text("Type: Materiel"),
                                  Text("Nom: Batterie"),
                                  Text("Prix/KG: 500 FCFA"),
                                ],),
                              ),
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
    );
  }
  IconButton inconbutton({icon, Color color = Colors.white,onpres}) => IconButton(onPressed: onpres,icon: Icon(icon),iconSize: 45,);
}*/
