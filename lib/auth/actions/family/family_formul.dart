import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'db_family/database_family.dart';

class Formulaire extends StatefulWidget {
  Function addition;
   Formulaire({Key key,this.addition()}) : super(key: key);

  @override
  _FormulaireState createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  TextEditingController nomcontrol = TextEditingController();
  TextEditingController prenomcontrol = TextEditingController();
  TextEditingController agecontrol = TextEditingController();
  TextEditingController matriculecontrol = TextEditingController();
  Color coloration = Colors.white;
  List<Eleve>list_eleves = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(height: 15,),
            champtextbuild(text: "Nom",controler: nomcontrol),
            SizedBox(height: 13,),
            champtextbuild(text: "Prenom",controler: prenomcontrol),
            SizedBox(height: 13,),
            champtextbuild(text: "Age",controler: agecontrol),
            SizedBox(height: 13,),
            champtextbuild(text: "N°matricule",controler: matriculecontrol),
            SizedBox(height: 20,),
            buttonbuilder(text: "Enregistrer",color: Colors.blue,onpress: (){
             // enregistrer();
              setState(() {
                list_eleves.add(new Eleve(nom: nomcontrol.text,Prenom: prenomcontrol.text,age: agecontrol.text,matricule: matriculecontrol.text));
                this.widget.addition();
              });
            }
            ),
          ],
        ),
      ],
    );
  }
  TextFormField champtextbuild({String text,controler}) => TextFormField(
    decoration: InputDecoration(hintText: text,border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(17)),
    )
    ),controller: controler,
  );
  ElevatedButton buttonbuilder({String text,color,onpress}) => ElevatedButton(onPressed: onpress, child: Text(text,style: TextStyle(color: Colors.white)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),);

}
