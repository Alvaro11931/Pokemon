import 'package:flutter/material.dart';

class Evolution extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: Colors.white,
        primary: Colors.black,
        onSurface: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {},
      child: Text("Evolution", style: TextStyle(fontWeight: FontWeight.w800)),
    );
  }
}

class EvolutionPoke extends StatelessWidget {
  String descripcion;
  EvolutionPoke(this.descripcion);
  @override
  Widget build(BuildContext context) {
    return Text(
      descripcion,
      style: TextStyle(),
      textAlign: TextAlign.center,
    );
  }
}
