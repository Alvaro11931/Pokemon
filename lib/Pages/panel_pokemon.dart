import 'package:flutter/material.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/boton_home.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/fondo.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/tipy_pokemon.dart';
import 'package:pokemon/Widgets/imagen_pokemon.dart';
import 'package:pokemon/Widgets/scroll_pokemon.dart';
import 'package:pokemon/Widgets/status_bar.dart';

class PanelPokemon extends StatefulWidget {
  String tipoDePokemon;
  String imgPokemon;
  String altura;
  String peso;
  String description;

  PanelPokemon(this.imgPokemon, this.tipoDePokemon, this.altura, this.peso,
      this.description);
  @override
  _PanelPokemonState createState() => _PanelPokemonState(this.tipoDePokemon,
      this.imgPokemon, this.altura, this.peso, this.description);
}

class _PanelPokemonState extends State<PanelPokemon> {
  String tipoDePokemon;
  String imgPokemon;
  String altura;
  String peso;
  String dexcription;
  _PanelPokemonState(this.imgPokemon, this.tipoDePokemon, this.altura,
      this.peso, this.dexcription);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Fondo(tipoDePokemon),
        StatusBar(altura, peso, dexcription),
        Positioned(
          top: 184.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            child: PokemonDeLista(imgPokemon),
            height: 250.0,
          ),
        ),
        BotonHome()
      ]),
    );
  }
}
