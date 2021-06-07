import 'package:flutter/material.dart';
import 'package:pokemon/Pages/panel_pokemon.dart';

class ImagenPokemon extends StatelessWidget {
  String imagenPokemon;
  double wightDeLaImagen;
  double heightDeLaImagen;
  double marginAll;

  ImagenPokemon(this.imagenPokemon, this.heightDeLaImagen, this.wightDeLaImagen,
      this.marginAll);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(90.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10.0)
            ]),
        child: Container(
          margin: EdgeInsets.all(marginAll),
          width: wightDeLaImagen,
          height: heightDeLaImagen,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(imagenPokemon))),
        ),
      ),
    );
  }
}
