import 'package:flutter/material.dart';

class CardMissao extends StatelessWidget {
  const CardMissao({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Card(
          color: Color.fromARGB(255, 255, 124, 64),
          child: Row(
            children: <Widget>[
              _prazo(),
              Container(
                height: 250,
                width: 1.0,
                color: Color.fromARGB(255, 16, 6, 17),
                margin: EdgeInsets.only(right: 10),
              ),
              _informacoes(),
            ],
          )),
    );
  }
}

Widget _prazo() {
  return Padding(
    padding: EdgeInsets.only(left: 10, right: 10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          "images/pi.png",
          fit: BoxFit.scaleDown,
          width: 50,
        ),
        Padding(
          padding: EdgeInsets.only(top: 25),
          child: Text(
            "Para:",
            style: TextStyle(
                color: Color.fromARGB(255, 16, 6, 17),
                fontFamily: 'DalekPinpointBold',
                fontSize: 10),
          ),
        ),
        Text(
          "15 de Setembro",
          style: TextStyle(
              color: Color.fromARGB(255, 16, 6, 17),
              fontFamily: 'DalekPinpointBold',
              fontSize: 10),
        ),
      ],
    ),
  );
}

Widget _informacoes() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 10),
        child: Text(
          "Lista de atividades para prova intermediária.",
          style: TextStyle(
              color: Color.fromARGB(255, 16, 6, 17),
              fontFamily: 'DalekPinpointBold',
              fontSize: 12),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 20),
        child: Text(
          "Na prova irá cair 2 questões de retas e 4 de matematica básica.",
          style: TextStyle(
              color: Color.fromARGB(255, 16, 6, 17),
              fontFamily: 'DalekPinpointBold',
              fontSize: 8.5),
        ),
      ),
      Text(
        "Ambas as matérias se encontram nas páginas 63, 64 e 65",
        style: TextStyle(
            color: Color.fromARGB(255, 16, 6, 17),
            fontFamily: 'DalekPinpointBold',
            fontSize: 8.5),
      ),
      Padding(
        padding: EdgeInsets.only(top: 15),
        child: RaisedButton(
          color: Color.fromARGB(255, 16, 6, 17),
          textColor: Color.fromARGB(255, 255, 124, 64),
          child: Text(
            "ATACAR",
            style: TextStyle(fontFamily: 'DalekPinpointBold', fontSize: 15),
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}
