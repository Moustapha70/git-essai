import 'package:flutter/material.dart';
class MenuButton extends StatelessWidget {

  IconData icon;
  Color color = Colors.white;
   Function onpres;
   String titre ="";
   MenuButton({Key key,this.icon,this.titre,this.color,this.onpres()}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  SizedBox(
        height: 80,
        child: Column(children: [
          Container(color: Colors.white.withOpacity(0.5),child:
          IconButton(onPressed: () {
            onpres();
          },icon: Icon(icon),iconSize: 45,)
            ,),
          Text(titre,style: TextStyle(fontSize: 10,color: Colors.white),)
        ],
        ),
      ),
    );
  }

}
