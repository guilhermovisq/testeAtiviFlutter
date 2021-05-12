import 'package:flutter/material.dart';

class Textos extends StatelessWidget {
  String seuTexto;
  String seuTexto2;
  @override
  Widget build(BuildContext context) {
    return Text(
      seuTexto,
      style: TextStyle(
          color: Colors.red,
          backgroundColor: Colors.white,
          fontSize: 20
      ),
    );
  }
  Textos(this.seuTexto);
}
