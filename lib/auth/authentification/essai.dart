import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserPages extends StatefulWidget {
  const UserPages({Key key}) : super(key: key);

  @override
  _UserPagesState createState() => _UserPagesState();
}

class _UserPagesState extends State<UserPages> {
  bool valeur = false;
  void change(t){
    setState(() {
      valeur = t;
    });
  }
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
                      Container(child: inconbutton(icon: Icons.home_filled,color:Colors.white,onpres: (){}),color: Colors.white.withOpacity(0.5),),
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
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      color: Colors.blue,
                      child: Center(child: Text("gestion de commande",style: const TextStyle(fontSize: 25,color: Colors.white)),),
                    ),

                    Expanded(child: Container(
                      color: Colors.blue,
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
                                  Container(child: Icon(Icons.open_in_new,size: 25),color: Colors.blue.withOpacity(0.5),),
                                  SizedBox(height: 10,),
                                  Center(child: Text("creer un compte",style: TextStyle(fontWeight: FontWeight.bold)),),
                                  SizedBox(height: 20,),
                                  champtext("nom"),
                                  SizedBox(height: 20,),
                                  champtext("prenom"),
                                  SizedBox(height: 20,),
                                  champtext("email"),
                                  SizedBox(height: 20,),
                                  champtext("mot de passe"),
                                  SizedBox(height: 20,),
                                  champtext("confirmer mot de passe"),
                                  SizedBox(height: 20,),
                                  CheckboxListTile(
                                    title: Text("Se souvenir de moi"),value: valeur, onChanged: change,activeColor: Colors.green,

                                  ),
                                  SizedBox(height: 20,),
                                  RaisedButton(onPressed: (){
                                  },
                                    color: Colors.blue,child: Text("S'enregistre"),
                                  ),
                                ],
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                      //commentaire
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