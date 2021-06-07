import 'package:flutter/material.dart';

class textPokedex extends StatelessWidget {
  String title = "Pokedex";
  double letraSize;
  textPokedex(this.letraSize);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.transparent),
        ),
        child: Text(title,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: letraSize,
              fontFamily: "Lato",
            )));
  }
}
