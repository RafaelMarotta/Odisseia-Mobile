import 'package:flutter/material.dart';
import 'package:odisseia/tiles/drawer_tile.dart';

class CardMissao extends StatefulWidget {
  CardMissaoDTO cardMissaoDTO;
  CardMissao(this.cardMissaoDTO);

  _CardMissaoState createState() => _CardMissaoState(cardMissaoDTO);
}

class _CardMissaoState extends State<CardMissao> {
  
  CardMissaoDTO cardMissaoDTO;
  _CardMissaoState(CardMissaoDTO cardMissaoDTO){
    this.cardMissaoDTO = cardMissaoDTO;
  }
  
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
            _informacoes(context),
          ],
        ),
      ),
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
            style:
                TextStyle(color: Color.fromARGB(255, 16, 6, 17), fontSize: 12),
          ),
        ),
        Text(
          "15 de Setembro",
          style: TextStyle(color: Color.fromARGB(255, 16, 6, 17), fontSize: 12),
        ),
      ],
    ),
  );
}

Widget _informacoes(BuildContext context) {
  return Flexible(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
            width: 250,
            child: Text(
              "Lista de atividades para prova intermediária.",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            "Na prova irá cair 2 questões de retas e 4 de matematica básica.\nAmbas as matérias se encontram nas páginas 63, 64 e 65",
            style: TextStyle(color: Colors.white, fontSize: 8.9),
          ),
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
            onPressed: () {
              // Navigator.push(
              // context,
              // MaterialPageRoute(builder: (context) => TestMission()),
              // );
            },
          ),
        ),
      ],
    ),
  );
}
