import 'package:flutter/material.dart';

// ignore: must_be_immutable
class About extends StatefulWidget {
  bool isVisible;
  About(this.isVisible);
  @override
  _AboutState createState() => _AboutState(isVisible);
}

class _AboutState extends State<About> {
  bool isVisible;
  _AboutState(this.isVisible);
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shadowColor: Colors.white,
        primary: Colors.black,
        onSurface: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      onPressed: () {
        setState(() {
          isVisible = !isVisible;
        });
      },
      child: Text(
        "About",
        style: TextStyle(fontWeight: FontWeight.w800),
      ),
    );
  }
}

// ignore: must_be_immutable
class AboutPoke extends StatefulWidget {
  String descripcion;
  AboutPoke(this.descripcion);

  @override
  _AboutPokeState createState() => _AboutPokeState(this.descripcion);
}

class _AboutPokeState extends State<AboutPoke> {
  String description;
  _AboutPokeState(this.description);

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.descripcion,
      style: TextStyle(),
      textAlign: TextAlign.center,
    );
  }
}
