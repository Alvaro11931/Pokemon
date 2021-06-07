import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/base_stats.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/boton_home.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/evolution.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/fondo.dart';
import 'package:pokemon/Widgets/barra_de_informacion.dart';
import 'package:pokemon/Widgets/imagen_pokemon.dart';
import 'package:pokemon/Widgets/scroll_pokemon.dart';

import 'Partes De Widgets/about.dart';
import 'Partes De Widgets/moves.dart';

class StatusBar extends StatefulWidget {
  String altura;
  String peso;
  String description;
  StatusBar(this.altura, this.peso, this.description);

  @override
  _StatusBarState createState() => _StatusBarState(altura, peso, description);
}

class _StatusBarState extends State<StatusBar> {
  final llave = GlobalKey<ScaffoldState>();
  bool isVisible = true;
  String altura;
  String peso;
  String descripcion;

  _StatusBarState(this.altura, this.peso, this.descripcion);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 400.0),
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 15.0,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(12.0, 2.0))
          ],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
          color: Colors.white),
      child: Column(
        children: [
          BarraDeBotones(About(isVisible), BaseStats(), Evolution(), Moves()),
          Container(
              margin: EdgeInsets.only(left: 29.0, right: 29.0, top: 33.0),
              constraints: BoxConstraints(maxHeight: 150.0),
              child: Visibility(
                  visible: isVisible, child: AboutPoke(descripcion))),
          Container(
            margin: EdgeInsets.only(top: 28.0),
            width: 320.0,
            height: 72.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Height",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 99.0,
                      child: Text(altura),
                    )
                  ],
                ),
                SizedBox(width: 45.0),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Weight",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: 99.0,
                          child: Text(peso))
                    ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
