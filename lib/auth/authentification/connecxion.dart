
import 'package:cours/auth/actions/page_principale.dart';
import 'package:cours/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Connecxion extends StatefulWidget {
  const Connecxion({Key key}) : super(key: key);

  @override
  _ConnecxionState createState() => _ConnecxionState();
}

class _ConnecxionState extends State<Connecxion> {
  bool valeur = false;
  void change(t){
    setState(() {
      valeur = t;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(child: Icon(Icons.open_in_new,size: 25),color: Colors.blue.withOpacity(0.5),),
              SizedBox(height: 10,),
              Center(child: Text("Authentification",style: TextStyle(fontWeight: FontWeight.bold)),),
              SizedBox(height: 20,),
              champtext("email"),
              SizedBox(height: 20,),
              champtext("mot de passe"),
              SizedBox(height: 20,),
              CheckboxListTile(
                title: Text("Se souvenir de moi"),value: valeur, onChanged: change,activeColor: Colors.green,),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Vous n'avez pas de Compte?"),
                  SizedBox(width: 5,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserPage()));
                  }, child: Text("Créer un Compte",style: TextStyle(color: Colors.blue,)),),
                ],
              ),
              SizedBox(height: 20,),
              RaisedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PrincipalePage()));
              },
                color: Colors.blue,child: Text("Connexion"),
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
      ),
    );
  }

}
