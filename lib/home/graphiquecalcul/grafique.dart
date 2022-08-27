
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'graph/myhomepage.dart';







class Grphique extends StatefulWidget {
  const Grphique({Key key}) : super(key: key);

  @override
  _GrphiqueState createState() => _GrphiqueState();
}

class _GrphiqueState extends State<Grphique> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: MyHomePage(),
    );
  }

}
