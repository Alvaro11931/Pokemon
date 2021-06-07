import 'package:flutter/material.dart';

class BaseStats extends StatelessWidget {
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
      child: Text("Base Stats", style: TextStyle(fontWeight: FontWeight.w800)),
    );
  }
}

class BaseStatsPoke extends StatelessWidget {
  String descripcion;
  BaseStatsPoke(this.descripcion);
  @override
  Widget build(BuildContext context) {
    return Text(
      descripcion,
      style: TextStyle(),
      textAlign: TextAlign.center,
    );
  }
}
