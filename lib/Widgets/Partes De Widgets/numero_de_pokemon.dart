import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class NumeroDeSerie extends StatelessWidget{


  String numero ;

  NumeroDeSerie(this.numero);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        numero,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
          color: Color(0x61646060)
        ),
      ),
    );
  }
}
