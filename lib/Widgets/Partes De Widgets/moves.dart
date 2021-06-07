import 'package:flutter/material.dart';

class Moves extends StatelessWidget {
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
      child: Text("Moves", style: TextStyle(fontWeight: FontWeight.w800)),
    );
  }
}

class MovesPoke extends StatelessWidget {
  String descripcion;
  MovesPoke(this.descripcion);
  @override
  Widget build(BuildContext context) {
    return Text(
      descripcion,
      style: TextStyle(),
      textAlign: TextAlign.center,
    );
  }
}
