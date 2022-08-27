import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ao2 extends StatefulWidget {
  const Ao2({Key key}) : super(key: key);

  @override
  _Ao2State createState() => _Ao2State();
}

class _Ao2State extends State<Ao2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Column(
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
         /* SizedBox(height: 20,),
          RaisedButton(onPressed: (){
            Navigator.pop(context);
          },
            color: Colors.blue,child: Text("Envoyé"),
          ), */
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
