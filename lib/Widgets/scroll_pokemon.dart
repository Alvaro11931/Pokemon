import 'package:flutter/material.dart';

class ScrollPoke extends StatefulWidget {
  dynamic imagen;
  dynamic imagen2;
  dynamic imagen3;
  dynamic imagen4;
  ScrollPoke(this.imagen, this.imagen2, this.imagen3, this.imagen4);
  @override
  _ScrollPokeState createState() =>
      _ScrollPokeState(imagen, imagen2, imagen3, imagen4);
}

class _ScrollPokeState extends State<ScrollPoke> {
  dynamic _imagen;
  dynamic _imagen2;
  dynamic _imagen3;
  dynamic _imagen4;
  _ScrollPokeState(this._imagen, this._imagen2, this._imagen3, this._imagen4);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210.0,
        child: ListView(
          physics: BouncingScrollPhysics(
          ),
          scrollDirection: Axis.horizontal,
          children: [
            _imagen,
            _imagen2,
            _imagen3,
            _imagen4
          ],
        ));
  }
}
