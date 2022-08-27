
import 'package:flutter/material.dart';

class AjoutFournisseur extends StatelessWidget {

  final Element element;
  final Function delete;
  AjoutFournisseur({ this.element, this.delete}) ;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(""),
        subtitle: Column(
          children: [
            Text(""),
            Text(""),
            Text(""),
            Text(""),
          ],
        ),
        trailing: IconButton(icon: Icon(Icons.delete), onPressed: this.delete)
      ),
    );
  }
}
