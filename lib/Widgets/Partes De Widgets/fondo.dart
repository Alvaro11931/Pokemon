import 'package:flutter/material.dart';

class Fondo extends StatelessWidget {
  dynamic color;
  String tipoDePokemon;
  Fondo(this.tipoDePokemon);
  @override
  Widget build(BuildContext context) {
    dynamic naranja = [Color(0xFFEEA067), Color(0xFFEE9E69)];
    dynamic amarillo = [Color(0xFFEAC95F), Color(0xFFEFD061)];
    dynamic verde = [Color(0xFF89EC60), Color(0xFF82F565)];
    dynamic azul = [Color(0xFF5BCCF6), Color(0xFF59CAE3)];

    if (tipoDePokemon == "Grass") {
      color = verde;
    } else if (tipoDePokemon == "Fire") {
      color = naranja;
    } else if (tipoDePokemon == "Water") {
      color = azul;
    } else {
      color = amarillo;
    }

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: color,
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
    );
  }
}
