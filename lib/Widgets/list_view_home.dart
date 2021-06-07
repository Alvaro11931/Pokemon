import 'package:flutter/material.dart';
import 'package:pokemon/Pages/panel_pokemon.dart';

import 'Partes De Widgets/imagen_pokemon.dart';
import 'Partes De Widgets/nombre_de_pokemon.dart';
import 'Partes De Widgets/tipy_pokemon.dart';
import 'imagen_pokemon.dart';

class ListViewpoke extends StatefulWidget {
  const ListViewpoke({Key? key}) : super(key: key);

  @override
  _ListViewpokeState createState() => _ListViewpokeState();
}

class _ListViewpokeState extends State<ListViewpoke> {
  @override
  Widget build(BuildContext context) {
    return ListView(physics: BouncingScrollPhysics(), children: [
      CajitaPokemon(
          "assets/bullbasaur.png",
          "Grass",
          "Bullbasaur",
          "0.7 m",
          "50 kg",
          "Bulbasaur es un Pokémon de tipo planta/veneno introducido en la primera generación. Es uno de los Pokémon iniciales que pueden elegir los entrenadores que empiezan su aventura en la región Kanto, junto a Squirtle y Charmander (excepto en Pokémon Amarillo)."),
      CajitaPokemon(
          "assets/Charmander.png",
          "Fire",
          "Charmander",
          "1.0 m",
          "45 kg",
          "Charmander es un pequeño lagarto bípedo. Sus características de fuego son resaltadas por su color de piel anaranjado y su cola con la punta envuelta en llamas. "),
      CajitaPokemon(
          "assets/Pikachu.png",
          "Electric",
          "Pikachu",
          "0.9 m",
          "30 kg",
          "Pikachu es un Pokémon de tipo eléctrico introducido en la primera generación"),
      CajitaPokemon("assets/1.png", "Water", "Squirtle", "0.85", "55 kg",
          "Pikachu es un Pokémon de tipo eléctrico introducido en la primera generación"),
      CajitaPokemon(
          "assets/bullbasaur.png",
          "Grass",
          "Bullbasaur",
          "0.7 m",
          "50 kg",
          "Bulbasaur es un Pokémon de tipo planta/veneno introducido en la primera generación. Es uno de los Pokémon iniciales que pueden elegir los entrenadores que empiezan su aventura en la región Kanto, junto a Squirtle y Charmander (excepto en Pokémon Amarillo)."),
      CajitaPokemon(
          "assets/Charmander.png",
          "Fire",
          "Charmander",
          "1.0 m",
          "45 kg",
          "Charmander es un pequeño lagarto bípedo. Sus características de fuego son resaltadas por su color de piel anaranjado y su cola con la punta envuelta en llamas. "),
      CajitaPokemon(
          "assets/Pikachu.png",
          "Electric",
          "Pikachu",
          "0.9 m",
          "30 kg",
          "Pikachu es un Pokémon de tipo eléctrico introducido en la primera generación"),
      CajitaPokemon(
          "assets/bullbasaur.png",
          "Grass",
          "Bullbasaur",
          "0.7 m",
          "50 kg",
          "Bulbasaur es un Pokémon de tipo planta/veneno introducido en la primera generación. Es uno de los Pokémon iniciales que pueden elegir los entrenadores que empiezan su aventura en la región Kanto, junto a Squirtle y Charmander (excepto en Pokémon Amarillo)."),
      CajitaPokemon(
          "assets/Pikachu.png",
          "Electric",
          "Pikachu",
          "0.9 m",
          "30 kg",
          "Pikachu es un Pokémon de tipo eléctrico introducido en la primera generación"),
      CajitaPokemon("assets/1.png", "Water", "Squirtle", "0.85", "55 kg",
          "Squirtle Squirtle Squirtle Squirtle Squirtle Squirtle Squirtle Squirtle Squirtle Squirtle Squirtle Squirtle"),
      CajitaPokemon(
          "assets/bullbasaur.png",
          "Grass",
          "Bullbasaur",
          "0.7 m",
          "50 kg",
          "Bulbasaur es un Pokémon de tipo planta/veneno introducido en la primera generación. Es uno de los Pokémon iniciales que pueden elegir los entrenadores que empiezan su aventura en la región Kanto, junto a Squirtle y Charmander (excepto en Pokémon Amarillo)."),
      CajitaPokemon(
          "assets/Pikachu.png",
          "Electric",
          "Pikachu",
          "0.9 m",
          "30 kg",
          "Pikachu es un Pokémon de tipo eléctrico introducido en la primera generación"),
    ]);
  }
}

class CajitaPokemon extends StatelessWidget {
  String img;
  String tipoDePokemon;
  String nombrePoke;
  String altura;
  String peso;
  String description;
  CajitaPokemon(this.img, this.tipoDePokemon, this.nombrePoke, this.altura,
      this.peso, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => PanelPokemon(
                      tipoDePokemon, img, altura, peso, description)));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ImagenPokemon(img, 75.0, 75.0, 0),
            Column(
              children: [
                NombreDePokemon(nombrePoke, 15.0),
                TipePokemon(tipoDePokemon, 20.0, 70.0, 8.0)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
