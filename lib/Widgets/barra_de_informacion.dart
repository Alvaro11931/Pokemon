import 'package:flutter/material.dart';

class BarraDeBotones extends StatefulWidget {
  dynamic contenido;
  dynamic contenido2;
  dynamic contenido3;
  dynamic contenido4;
  BarraDeBotones(
      this.contenido, this.contenido2, this.contenido3, this.contenido4);

  @override
  _BarraDeBotonesState createState() =>
      _BarraDeBotonesState(contenido, contenido2, contenido3, contenido4);
}

class _BarraDeBotonesState extends State<BarraDeBotones> {
  dynamic _contenido;
  dynamic _contenido2;
  dynamic _contenido3;
  dynamic _contenido4;
  _BarraDeBotonesState(
      this._contenido, this._contenido2, this._contenido3, this._contenido4);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 46.0, left: 29.0, right: 29.0),
      height: 40.0,
      child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: [
            _contenido,
            SizedBox(width: 30.0, height: 30.0),
            _contenido2,
            SizedBox(width: 30.0, height: 30.0),
            _contenido3,
            SizedBox(width: 30.0, height: 30.0),
            _contenido4
          ]),
    );
  }
}
