import 'package:flutter/material.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/imagen_pokemon.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/text_pokedex.dart';
import 'package:pokemon/Widgets/floating_action.dart';
import 'package:pokemon/Widgets/imagen_pokemon.dart';
import 'package:pokemon/Widgets/list_view_home.dart';
import 'package:provider/provider.dart';

class PantallaHome extends StatefulWidget {
  const PantallaHome({Key? key}) : super(key: key);

  @override
  _PantallaHomeState createState() => _PantallaHomeState();
}

class _PantallaHomeState extends State<PantallaHome> {
  @override
  Widget build(BuildContext context) {
    final mensaje = Provider.of<String>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        actions: [
          IconButton(
            splashColor: Colors.blue,
            splashRadius: 25.0,
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10.0),
        ],
      ),
      body: Stack(children: [
        Positioned(
          top: 20.0,
          left: 26.0,
          child: Container(
            child: textPokedex(30),
          ),
        ),
        Positioned(
          top: 80.0,
          left: 26.0,
          right: 190.0,
          bottom: 47.0,
          child: Container(child: ListViewpoke()),
        ),
        Positioned(
          top: 120.0,
          left: 230.0,
          right: 10.0,
          bottom: 70.0,
          child: Container(
              child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                  margin: EdgeInsets.all(10.0),
                  height: 120,
                  child: PokemonDeLista("assets/agua.png")),
              Container(
                  margin: EdgeInsets.all(10.0),
                  height: 120,
                  child: PokemonDeLista("assets/planta.png")),
              Container(
                  margin: EdgeInsets.all(10.0),
                  height: 120,
                  child: PokemonDeLista("assets/rayo.png")),
              Container(
                  margin: EdgeInsets.all(10.0),
                  height: 120,
                  child: PokemonDeLista("assets/fuego.png")),
            ],
          )),
        ),
      ]),
      floatingActionButton: Boton(),
    );
  }
}
