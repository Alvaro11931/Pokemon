import 'package:flutter/material.dart';
import 'Partes De Widgets/imagen_pokemon.dart';
import 'Partes De Widgets/nombre_de_pokemon.dart';
import 'Partes De Widgets/numero_de_pokemon.dart';
import 'Partes De Widgets/tipy_pokemon.dart';

class CuadroPokemon extends StatelessWidget {
  String namePokemon;
  String imagenPokemon;
  String tipoDePokemon;
  String numero;
  dynamic color;
  CuadroPokemon(
      this.numero, this.namePokemon, this.tipoDePokemon, this.imagenPokemon);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    dynamic naranja = [Color(0xFFF89A51), Color(0xFFFC9046)];
    dynamic amarillo = [Color(0xFFF1C81C), Color(0xFFE2BF1F)];
    dynamic verde = [Color(0xFF73E048), Color(0xFF70EC56)];
    dynamic azul = [Color(0xFF31B7E5), Color(0xFF36B3CB)];

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
        width: 155.0,
        height: 110.0,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 8.0,
                  offset: Offset(5.0, 8.0)),
            ],
            borderRadius: BorderRadius.circular(15.0),
            gradient: LinearGradient(
                colors: color,
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 42,
              bottom: 0.0,
              right: -3.73,
              child: Container(
                  width: 83.0,
                  height: 83.0,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(15.0)),
                    color: Colors.transparent,
                    // no es la imagen adecuada
                  )),
            ),
            Positioned(
              top: 35.0,
              left: 72.0,
              right: 7.0,
              child: Container(),
            ),
            Positioned(
              top: 10.0,
              right: 7.0,
              left: 98.0,
              child: NumeroDeSerie(numero),
            ),
            Positioned(
              top: 24.0,
              left: 16.0,
              right: 69.0,
              child: NombreDePokemon(namePokemon, 14.0),
            ),
            Positioned(
              left: 16.0,
              top: 47.0,
              right: 96.0,
              child: Column(
                children: <Widget>[],
              ),
            ),
          ],
        ));
  }
}
