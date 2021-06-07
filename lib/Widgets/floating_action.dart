import 'package:flutter/material.dart';
import 'package:pokemon/Pages/panel_pokemon.dart';
import 'package:pokemon/Widgets/Partes%20De%20Widgets/boton_home.dart';

class Boton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "Stats",
      elevation: 6,
      highlightElevation: 0,
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Seatings()));
      },
      child: Icon(Icons.stacked_bar_chart),
      backgroundColor: Colors.black,
    );
  }
}

class Seatings extends StatefulWidget {
  @override
  _SeatingsState createState() => _SeatingsState();
}

class _SeatingsState extends State<Seatings> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 120.0,
            left: 20.0,
            right: 20.0,
            bottom: 0.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Stack(children: [
                    Positioned(
                      child: Text(
                        "Ajustes",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                    child: Column(
                  children: [
                    Container(
                      height: 70,
                      child: Stack(children: [
                        Positioned(
                          top: 10.0,
                          left: 5.0,
                          right: 5.0,
                          child: Text(
                            "Sonido",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Positioned(
                          top: 40.0,
                          left: 10.0,
                          right: 10.0,
                          child: Text(
                            "Sonido",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w200),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      height: 70,
                      child: Stack(children: [
                        Positioned(
                          top: 10.0,
                          left: 5.0,
                          right: 5.0,
                          child: Text(
                            "Pantalla",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Positioned(
                          top: 40.0,
                          left: 10.0,
                          right: 10.0,
                          child: Text(
                            "Configuracion de pantalla",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w200),
                          ),
                        ),
                      ]),
                    ),
                    Container(
                      height: 70,
                      child: Stack(children: [
                        Positioned(
                          top: 10.0,
                          left: 5.0,
                          right: 5.0,
                          child: Text(
                            "Tema",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Positioned(
                          top: 40.0,
                          left: 10.0,
                          right: 10.0,
                          child: Text(
                            "Tema de la pantalla",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w200),
                          ),
                        ),
                      ]),
                    ),
                  ],
                )),
              ],
            ),
          ),
          BotonHome()
        ],
      ),
    );
  }
}
