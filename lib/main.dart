



import 'package:cours/auth/actions/fournisseur/ajouter/enregistrement.dart';
import 'package:cours/auth/actions/fournisseur/fournisseur.dart';
import 'package:cours/auth/actions/offres/gestion_offres/moule.dart';
import 'package:cours/auth/actions/page_principale.dart';
import 'package:cours/auth/authentification/connecxion.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrincipalePage(),
    );
  }
}

class UserPage extends StatefulWidget {
  const UserPage({Key key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
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
              CheckboxListTile(title: Text("Se souvenir de moi"),value: valeur, onChanged: change,activeColor: Colors.green,),
              const SizedBox(height: 20,),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PrincipalePage()));
              },
                color: Colors.blue,child: Text("S'enregistre"),
              ),
            ],
          ),
        ),
      ),
      );

  }

  IconButton inconbutton({icon, Color color = Colors.white,onpres}) => IconButton(onPressed: onpres,icon: Icon(icon),iconSize: 45,);

  TextFormField champtext(String text, ) {
    return TextFormField(
               decoration: InputDecoration(
               hintText: text,
               border: const OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.zero),
               ),
               ),
               );
  }
}


