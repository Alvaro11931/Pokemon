import 'package:flutter/material.dart';

class TipePokemon extends StatelessWidget {
  String tipoDePokemon;
  dynamic color;
  double heightDeLaCaja;
  double wigthDeLaCaja;
  double tamanoDeLetra;

  TipePokemon(this.tipoDePokemon, this.heightDeLaCaja, this.wigthDeLaCaja,
      this.tamanoDeLetra);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

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
      height: heightDeLaCaja, //16.0,
      width: wigthDeLaCaja, //50.0,
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12,
                blurRadius: 1.0,
                offset: Offset(4.0, 3.0))
          ],
          borderRadius: BorderRadius.circular(38),
          gradient: LinearGradient(
              colors: color,
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(SnackBar(
              duration: Duration(milliseconds: 800),
              content: Text(tipoDePokemon),
            ));
        },
        child: Center(
          child: Text(
            tipoDePokemon,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: tamanoDeLetra,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
