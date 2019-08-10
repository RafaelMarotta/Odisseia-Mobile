import 'package:flutter/material.dart';

class Card_Test extends StatefulWidget {
  @override
  _Card_TestState createState() => _Card_TestState();
}

class _Card_TestState extends State<Card_Test> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Container(
          child: Text(
            "Lista de atividades para prova intermediária.",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      children: <Widget>[
        new Container(
          height: 60.0,
          margin: const EdgeInsets.only(
              top: 10.0, left: 10.0, right: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: new BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
      ],
      backgroundColor: Colors.white,
    );
  }
}
