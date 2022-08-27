import 'package:cours/db/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../db/db_offre.dart';

class Ajou_Offre extends StatefulWidget {
  Function onAdd;
   Ajou_Offre({Key key,this.onAdd()}) : super(key: key);

  @override
  _Ajou_OffreState createState() => _Ajou_OffreState();
}

class _Ajou_OffreState extends State<Ajou_Offre> {
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  TextEditingController textEditingController3 = TextEditingController();
  TextEditingController textEditingController4 = TextEditingController();

  DbOffre dbOffre = DbOffre();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                color: Colors.greenAccent,
                child: Center(
                  child: Container(
                    width: 400,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.asset(
                          "assets/images/cmdt.jpg",
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("plan de passation de marché CMDT 2022".toUpperCase()),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    champtext(
                        text: "plan de passation de marché CMDT 2022",
                        prefix: Icon(Icons.cloud_download),
                        controler: textEditingController1),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Avis D'Appel D'offres".toUpperCase()),
                    SizedBox(
                      height: 20,
                    ),
                    champtext(
                        text:
                            "Avis D'Appel D'offres N°05-2022-DA Pieces Detachees Centrales",
                        prefix: Icon(Icons.cloud_download),
                        controler: textEditingController2),
                    SizedBox(
                      height: 30,
                    ),
                    champtext(
                        text:
                            "Avis D'Appel D'offres N°06-2022-DA Fourinture De Vehicule 4*4 Pick Up Double Cabine"
                            "Diessel Vehicule 4*4* Station Wagon Diesel",
                        prefix: Icon(Icons.cloud_download),
                        controler: textEditingController3),
                    SizedBox(
                      height: 30,
                    ),
                    champtext(
                        text: "Avis D'Appel D'offres N°07-2022-DA Outillages",
                        prefix: Icon(Icons.cloud_download),
                        controler: textEditingController4),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {
                  list_offre.add(new DbOffre(one: textEditingController1.text,two: textEditingController2.text,three: textEditingController3.text,four: textEditingController4.text));
                   this.widget.onAdd();
                  },
                child: Text("enregistrer"),
                color: Colors.green,
              ),
            ],
          ),
        ],
      ),
    );
  }

  IconButton inconbutton({icon, Color color = Colors.white, onpres}) =>
      IconButton(
        onPressed: onpres,
        icon: Icon(icon),
        iconSize: 45,
      );

  TextFormField champtext({String text, prefix, controler}) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefix,
        hintText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
      ),
      validator: (value) => value == "" ? "veillez renseignez ce champ" : null,
      controller: controler,
    );
  }
}
