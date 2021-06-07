import 'package:flutter/material.dart';

class BotonHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      alignment: Alignment.bottomCenter,
      child: FloatingActionButton(
          child: Icon(
            Icons.home,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          highlightElevation: 0.0,
          splashColor: Colors.transparent,
          heroTag: "Home",
          onPressed: () {
            Navigator.of(context).pop();
          }),
    );
  }
}
