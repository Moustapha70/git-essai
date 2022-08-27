
import 'package:cours/enum/option_debut_hwik_black.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/*class Debut_HWIK_BlACK extends StatefulWidget {
  Function addition;
  Eleve EleveEdit;
  Debut_HWIK_BlACK({Key key,this.addition(),this.EleveEdit}) : super(key: key);

  @override
  _Debut_HWIK_BlACKState createState() => _Debut_HWIK_BlACKState();
}

class _Debut_HWIK_BlACKState extends State<Debut_HWIK_BlACK> {

  Option_HWIK_Black option_hwik_black = Option_HWIK_Black.DEBUT;
  TextEditingController nomcontrol = TextEditingController();
  TextEditingController prenomcontrol = TextEditingController();
  TextEditingController agecontrol = TextEditingController();
  TextEditingController matriculecontrol = TextEditingController();
  Color coloration = Colors.white;
  List<Eleve>list_eleve = [];
  Eleve eleve = Eleve();

   changes(Option_HWIK_Black optionHwikBlack){
    option_hwik_black = optionHwikBlack;
    setState(() {

    });
  }
  Widget affiche_result(){
    switch(this.option_hwik_black){
      case Option_HWIK_Black.DEBUT:return Container(child: Text("un chemin de mille pied commence par un pas"),);break;
      case Option_HWIK_Black.ESSAI:return Container(child: Text("foi en soie, dicipline et patience"),);break;
      default: Container(child:  Text("HWIK-Black en avant"),);break;
    }
  }

  //Editer la liste des eleve
  void editer(){
     if(widget.EleveEdit!=null){
       nomcontrol.text = widget.EleveEdit.nom;
       prenomcontrol.text = widget.EleveEdit.Prenom;
       agecontrol.text = widget.EleveEdit.age;
       matriculecontrol.text = widget.EleveEdit.matricule;
       setState(() {

       });
     }
  }
  void initState(){
     editer();
     super.initState();
  }

  void enregistrer(){
     if(widget.EleveEdit!=null){
       widget.EleveEdit.nom = nomcontrol.text;
       widget.EleveEdit.Prenom = prenomcontrol.text;
       widget.EleveEdit.age = agecontrol.text;
       widget.EleveEdit.matricule = matriculecontrol.text;
     }else if(nomcontrol.text.isNotEmpty || prenomcontrol.text.isNotEmpty){
       eleve = Eleve(nom: nomcontrol.text,Prenom: prenomcontrol.text,age: agecontrol.text,matricule: matriculecontrol.text);
       widget.addition(eleve);
     }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
            children: [
              Row(
                children: [
                  buttonbuilder(text: "Principe",color: Colors.green,onpress: () {
                    changes(Option_HWIK_Black.DEBUT);
                  },),
                  SizedBox(width: 5,),
                  buttonbuilder(text: "Pilier",color: Colors.yellow,onpress: () {
                    changes(Option_HWIK_Black.ESSAI);
                  }),
                ],
              ),
             Container(
               child: Flex(
                 direction: Axis.horizontal,
                 children:[ Row(
                   children: [
                     Expanded(
                       flex: 2,
                       child: Container(
                         color: Colors.blue.withOpacity(0.5),
                         child: Table(
                           columnWidths: const <int, TableColumnWidth>{
                             0:FlexColumnWidth(),
                             1:FlexColumnWidth(),
                             2:FlexColumnWidth(),
                             3:FlexColumnWidth(),
                             4:FlexColumnWidth(),
                           },
                           defaultColumnWidth: FlexColumnWidth(),
                           children: [
                             TableRow(
                               children: [
                                 entetebuild(text: "Nom",color: Colors.blue),
                                 entetebuild(text: "Prenom",color: Colors.white),
                                 entetebuild(text: "Age",color: Colors.white),
                                 entetebuild(text: "N°matricule",color: Colors.white),
                                 entetebuild(text: "Option",color: Colors.white),
                               ],
                             ),...list_eleve.map((text) {
                               if(coloration == Colors.white){
                                 coloration = Colors.grey;
                               }else{
                                 coloration = Colors.white;
                               }
                               return TableRow(
                                 children: [
                                   listeleve(text.nom),
                                   listeleve(text.Prenom),
                                   listeleve(text.age),
                                   listeleve(text.matricule),
                                   Row(children: [
                                     IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined),color: Colors.blue),
                                     IconButton(onPressed: (){
                                       list_eleve.remove(text);
                                       setState(() {

                                       });
                                       }, icon: Icon(Icons.delete_outline_outlined),color: Colors.redAccent),
                                   ],),
                                 ],
                               );
                             })
                           ],
                         ),
                       ),
                     ),
                     Flexible(
                       child: Expanded(
                         flex: 1,
                         child: Container(
                           margin: EdgeInsets.all(20),
                           color: Colors.white30.withOpacity(0.5),
                           child: Column(
                             children: [
                               champtextbuild(text: "Nom",controler: nomcontrol),
                               champtextbuild(text: "Prenom",controler: prenomcontrol),
                               champtextbuild(text: "Age",controler: agecontrol),
                               champtextbuild(text: "N°matricule",controler: matriculecontrol),
                               SizedBox(height: 15,),
                               buttonbuilder(text: "Enregistrer",color: Colors.green,onpress: (){
                                 enregistrer();
                                 list_eleve.add(new Eleve(nom: nomcontrol.text,Prenom: prenomcontrol.text,age: agecontrol.text,matricule: matriculecontrol.text));
                                 this.widget.addition();
                               }
                               ),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ],
                 ),
                 ],
               ),
             ),
              SizedBox(
                height: 100,
                child: Container(
                  color: Colors.white,
                  child: affiche_result(),
                ),
              ),
            ],
          ),
      ),
    );
  }

  TextFormField champtextbuild({String text,controler}) => TextFormField(
    decoration: InputDecoration(hintText: text,border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(17)),
    )
    ),controller: controler,
  );

  Container listeleve(String text) => Container(child: Center(child: Text(text,style: TextStyle(fontSize: 15),),),alignment: Alignment.center,color: coloration,);

  ElevatedButton buttonbuilder({String text,color,onpress}) => ElevatedButton(onPressed: onpress, child: Text(text,style: TextStyle(color: Colors.white)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),);

  Container entetebuild({String text, color}) => Container(child: Text(text,style: TextStyle(fontSize: 15,color: color),),color: Colors.blueGrey,);
}  */

/*class Eleve{
  String nom;
  String Prenom;
  String age;
  String matricule;

  Eleve({this.nom,this.Prenom,this.age,this.matricule});
}*/

/*List<Eleve> list_eleve = [
  Eleve(nom: "Inasse",Prenom: "Abass",age: "7",matricule: "SFM-Abs"),
  Eleve(nom: "Inasse",Prenom: "Alima",age: "7",matricule: "SFM-Alm"),
  Eleve(nom: "Inasse",Prenom: "Oumou Aimane",age: "7",matricule: "SFM-Oum"),
  Eleve(nom: "Inasse",Prenom: "Aboubacar Sidiki",age: "8",matricule: "SFM-Abc"),
  Eleve(nom: "Inasse",Prenom: "Drissa",age: "10",matricule: "SFM-Drs"),
  Eleve(nom: "Inasse",Prenom: "Ali",age: "12",matricule: "SFM-Al"),
  Eleve(nom: "Inasse",Prenom: "Yacouba",age: "12",matricule: "SFM-Yb"),
  Eleve(nom: "Inasse",Prenom: "Assitan",age: "15",matricule: "SFM-Ass"),
]; */