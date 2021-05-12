import 'package:ativi_14_04/ex01.dart';
import 'package:ativi_14_04/ex02.dart';
import 'package:flutter/material.dart';

import 'nossowidget/widget_buttons.dart';
class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Exercícios"),
        backgroundColor: Colors.blue,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Botoes("Ex01", onPressed: () {
                _exercicio01(context, Exercicio01());
              },),
              Botoes("Ex02", onPressed: () {
                _exercicio02(context, Exercicio02());
              },)
            ],
          )
        ],
      ),
    );
  }

  _exercicio01(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context){
      return page;
    }
    ));
  }

  _exercicio02(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context){
      return page;
    }
    ));
  }
}
