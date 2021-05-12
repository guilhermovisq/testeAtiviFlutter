import 'package:flutter/material.dart';

import 'nossowidget/widget_buttons.dart';
import 'nossowidget/widget_input.dart';
import 'nossowidget/widget_text.dart';
class Exercicio01 extends StatefulWidget {
  @override
  _Exercicio01State createState() => _Exercicio01State();
}

class _Exercicio01State extends State<Exercicio01> {
  final _num = TextEditingController();
  final _num2 = TextEditingController();
  double consumo = 0.000;
  double num2=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Exercício 01"),
        backgroundColor: Colors.red,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Wrap(
                children: [
                  Textos("Informe a distância percorrida em Km")
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: InputTextos("", "", controller: _num,),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textos("Informe o combustível gasto")
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: InputTextos("", "", controller: _num2,),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Botoes("Exibir consumo médio", onPressed: _consumo,)
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textos(consumo.toStringAsFixed(3)),
                  Textos(" km/l"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _consumo() {
    setState(() {
      num2=double.parse(_num2.text);
      num2=double.parse(num2.toStringAsFixed(1));
      consumo=double.parse(_num.text)/double.parse(_num2.text);
    });
  }
}
