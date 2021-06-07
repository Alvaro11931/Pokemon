import 'package:flutter/material.dart';

class PokemonDeLista extends StatefulWidget {
  String asset = "assets/2.png";
  PokemonDeLista(this.asset);

  @override
  _PokemonDeListaState createState() => _PokemonDeListaState(asset);
}

class _PokemonDeListaState extends State<PokemonDeLista> {
  String asset;
  _PokemonDeListaState(this.asset);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(asset))),
    );
  }
}
