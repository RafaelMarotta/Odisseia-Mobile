import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odisseia/screens/base_screen.dart';

class HomeScreen extends BaseScreen {
  @override
  Widget getBody() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _cardMateria(),

        ],
      ),
    );
  }
}

Widget _cardMateria() => Card(
      color: Color.fromARGB(255, 255, 124, 64),
      child: ListTile(
        leading: Image.asset(
          "images/pi.png",
          fit: BoxFit.scaleDown,
          width: 50,
        ),
        title: Text(
          "Matemática",
          style: TextStyle(
              color: Color.fromARGB(255, 16, 6, 17),
              fontFamily: 'DalekPinpointBold',
              fontSize: 18),
        ),
        subtitle: Text(
          "Missões abertas: 1",
          style: TextStyle(
            fontFamily: 'DalekPinpointBold',
            fontSize: 15,
          ),
        ),
      ),
    );


//Widget _panelMission() => ExpansionPanelList();