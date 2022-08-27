


import 'package:cours/db/user.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;

class Enregistrement extends StatefulWidget {
  Function close;
  Function onAdd;
  User userEdite;
   Enregistrement({Key key,this.userEdite,this.onAdd(User edited),this.close()}) : super(key: key);


  @override
  _EnregistrementState createState() => _EnregistrementState();
}

class _EnregistrementState extends State<Enregistrement> {
  TextEditingController nomcontroller = TextEditingController();
  TextEditingController prenomcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController telcontroller = TextEditingController();
  TextEditingController secteurcontroller = TextEditingController();
  User user = User();
  //remplir les champ avec les information de l'utilisateur a modifier
  void edite(){
    if(widget.userEdite !=null){
      nomcontroller.text=widget.userEdite.nom;
      prenomcontroller.text=widget.userEdite.prenom;
      emailcontroller.text = widget.userEdite.email;
      telcontroller.text = widget.userEdite.tel;
      secteurcontroller.text= widget.userEdite.secteur;
      setState(() {

      });
    }
  }

  @override
  void initState() {
    edite();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Form(
              child: Column(
                children: [
                  champtext(text: "nom",controler: nomcontroller),
                  SizedBox(height: 10,),
                  champtext(text: "prenom",controler: prenomcontroller),
                  SizedBox(height: 10,),
                  champtext(text: "tel",controler: telcontroller),
                  SizedBox(height: 10,),
                  champtext(text: "email",controler: emailcontroller),
                  SizedBox(height: 10,),
                  champtext(text: "secteur",controler: secteurcontroller),
                ],
              ),
            ),
          ),
          FlatButton(onPressed: (){
            enregistrer();
            },color: Colors.green, child: const Text("Enregistrer"),),
          SizedBox(height: 15),
          FlatButton(onPressed: (){
            enregistrer();
          },color: Colors.red, child: const Text("retour"),),
        ],
      )
    );
  }

  void enregistrer() {
      if(widget.userEdite!=null){
       widget.userEdite.prenom = prenomcontroller.text;
       widget.userEdite.nom = nomcontroller.text;
       widget.userEdite.email = emailcontroller.text;
       widget.userEdite.tel= telcontroller.text;
       widget.userEdite.secteur = secteurcontroller.text;
      widget.onAdd(widget.userEdite);
    }else if(prenomcontroller.text.isNotEmpty || nomcontroller.text.isNotEmpty){
     user=  User(nom: nomcontroller.text,prenom: prenomcontroller.text,tel: telcontroller.text,email: emailcontroller.text,secteur: secteurcontroller.text);
     widget.onAdd(user);
    }else{

        this.widget.close();
      }

  }

  TextFormField champtext({text,controler}) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
      ),
      controller: controler,
    );
  }
}
