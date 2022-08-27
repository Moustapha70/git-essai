import 'package:cours/auth/actions/family/family_formul.dart';
import 'package:cours/auth/actions/family/list_membre.dart';
import 'package:cours/enum/option_debut_hwik_black.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Family extends StatefulWidget {
  const Family({Key key}) : super(key: key);

  @override
  _FamilyState createState() => _FamilyState();
}

class _FamilyState extends State<Family> {
  Option_HWIK_Black option_hwik_black = Option_HWIK_Black.HOME;


  changes(Option_HWIK_Black optionHwikBlack){
    option_hwik_black = optionHwikBlack;
    setState(() {

    });
  }
  Widget affiche_result(){
    switch(this.option_hwik_black){
      case Option_HWIK_Black.DEBUT:return Text("un chemin de mille pied commence par un pas",style: stylebuilder(color: Colors.blue,fontweight: FontWeight.w800),);break;
      case Option_HWIK_Black.ESSAI:return Text("foi en soie, dicipline et patience",style: stylebuilder(color: Colors.blue,fontweight: FontWeight.w800),);break;
      default: return Text("HWIK-Black en avant",style: stylebuilder(color: Colors.blue,fontweight: FontWeight.w800),);break;
    }
  }

  TextStyle stylebuilder({color,fontweight}) => TextStyle(fontSize: 30,color: color,fontWeight: fontweight);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 50,
            child: Row(
              textDirection: TextDirection.rtl,
              children: [
                buttonbuilder(text: "Pilier",color: Colors.yellow,onpress: () {
                  changes(Option_HWIK_Black.ESSAI);
                }),
                SizedBox(width: 5,),
                buttonbuilder(text: "Principe",color: Colors.green,onpress: () {
                  changes(Option_HWIK_Black.DEBUT);
                },),
              ],
            ),
          ),
          Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                        child: Container(
                          color: Colors.white,
                          child: Menbres(),
                        )
                    ),
                    Expanded(
                      flex: 1,
                        child: Container(
                          child: Formulaire(),
                        )
                    ),
                  ],
                ),
              )
          ),
          Container(
            height: 120,
            color: Colors.grey.withOpacity(.2),
            child: Center(child: affiche_result(),),
          ),
        ],
      ),
    );
  }
  ElevatedButton buttonbuilder({String text,color,onpress}) => ElevatedButton(onPressed: onpress, child: Text(text,style: TextStyle(color: Colors.white)),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),);
}
