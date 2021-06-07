import 'package:flutter/material.dart';

class NombreDePokemon extends StatelessWidget {
  String namePokemon;
  double tamanodeLetra;

  NombreDePokemon(this.namePokemon, this.tamanodeLetra);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      namePokemon,
      style: TextStyle(
          fontFamily: "Lato",
          fontSize: tamanodeLetra,
          fontWeight: FontWeight.w500,
          color: Colors.black),
      textAlign: TextAlign.left,
    );
  }
}
