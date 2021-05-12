import 'package:flutter/material.dart';

import 'nossowidget/widget_buttons.dart';
import 'nossowidget/widget_input.dart';
import 'nossowidget/widget_text.dart';
class Exercicio02 extends StatefulWidget {
  @override
  _Exercicio02State createState() => _Exercicio02State();
}

class _Exercicio02State extends State<Exercicio02> {
  final _num = TextEditingController();
  final _num2 = TextEditingController();
  final _num3 = TextEditingController();
  double total = 0.00;
  double percent = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Exercício 02"),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textos("Informe o valor total da conta")
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
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textos("Informe o percentual de gorjeta")
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
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textos("Informe o número de amigos")
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: InputTextos("", "", controller: _num3,),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Botoes("Exibir valor individual da conta", onPressed: _conta,)
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Textos(total.toStringAsFixed(2))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }



  _conta() {
    setState(() {
      percent=(double.parse(_num.text)*double.parse(_num2.text))/100;
      total=(double.parse(_num.text)+percent)/double.parse(_num3.text);
    });
  }
}
