

import 'package:cours/auth/actions/family/optionfamily.dart';
import 'package:cours/auth/authentification/connecxion.dart';
import 'package:cours/enum/menuoption.dart';
import 'package:cours/home/fournisseuroption.dart';
import 'package:cours/home/menu.button.dart';
import 'package:cours/home/offreoption.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home/graphiquecalcul/grafique.dart';


class PrincipalePage extends StatefulWidget {
  const PrincipalePage({Key key}) : super(key: key);

  @override
  _PrincipalePageState createState() => _PrincipalePageState();
}

class _PrincipalePageState extends State<PrincipalePage> {
  OptionMenu menu = OptionMenu.HOME;

  void setmenu(OptionMenu menu){
    this.menu = menu;
    setState(() {

    });
  }

  // definis option
  Widget afficheMenu(){
    switch(this.menu){
      case OptionMenu.FOURNISSEUR : return FournisseurOption();break;
      case OptionMenu.COMMANDE : return Text("Commande"); break;
      case OptionMenu.OFFRET: return OffreOption();break;
      case OptionMenu.UTILISATEUR: return Connecxion();break;
      case OptionMenu.POSTULANT: return Family();break;
      default: return Container(child: Grphique(),);
    }
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
                      child: Image.asset("assets/images/Uie.jpg"),
                    ),
                  ),
                  MenuButton(icon: Icons.home_filled,color: Colors.white,onpres: (){ setmenu(OptionMenu.HOME);},titre: "Home",),
                  MenuButton(icon: Icons.one_k,color: Colors.white,onpres: (){ setmenu(OptionMenu.POSTULANT);},titre: "Postulant",),
                  MenuButton(icon: Icons.add_shopping_cart_rounded,color: Colors.white,onpres: (){setmenu(OptionMenu.FOURNISSEUR);},titre: "Fournisseur",),
                  MenuButton(icon: Icons.clean_hands,color: Colors.white,onpres: (){setmenu(OptionMenu.OFFRET);},titre: "Offres",),
                  MenuButton(icon: Icons.person_outline,color: Colors.white,onpres: (){setmenu(OptionMenu.UTILISATEUR);},titre: "Utilisateur",),
                ],
              ),
            ),


//gestion de commande
            Container(
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 70,
                        child: Container(
                          color: Colors.blue,
                          child: Center(child: Text("gestion de commande",style: const TextStyle(fontSize: 25,color: Colors.white)),),
                        ),
                      ),
                      Expanded(

                        child: Container(

                          child:afficheMenu(),
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
}
