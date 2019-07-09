import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odisseia/screens/base_screen.dart';
import 'package:odisseia/widgets/card_materia.dart';

class HomeScreen extends BaseScreen {
  @override
  Widget getBody() {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            elevation: 10,
            titleSpacing: 15,
            backgroundColor: Color.fromARGB(255, 255, 124, 64),
            title: Container(
              margin: EdgeInsets.only(bottom: 15),
              child:TabBar(
              indicatorPadding: EdgeInsets.only(bottom: -18),
              indicatorWeight: 3,
              indicatorColor: Color.fromARGB(255, 255, 124, 64),
              tabs: <Widget>[
                _getTab("Matérias"),
                _getTab("Não Concluídas")
              ],
            )),
          ),
        ),
        body: TabBarView(
          children: <Widget>[_getTurmas(), _getMissoes()],
        ),
      ),
    ));
  }
}

Widget _getTab(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: Colors.white,
      fontSize: 15.0,
      fontFamily: 'DalekPinpointBold',
    ),
  );
}

Widget _getTurmas() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      CardMateria(),
      CardMateria(),
      CardMateria(),
      CardMateria(),
      CardMateria(),
      CardMateria()
    ],
  );
}

Widget _getMissoes() {
  return Column (
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("Tutu DESEMBOLA O CARD DE MISSÕES"),
      Text("Tutu DESEMBOLA O CARD DE MISSÕES"),
      Text("Tutu DESEMBOLA O CARD DE MISSÕES"),
      Text("Tutu DESEMBOLA O CARD DE MISSÕES"),
      Text("Tutu DESEMBOLA O CARD DE MISSÕES"),
      Text("Tutu DESEMBOLA O CARD DE MISSÕES"),
    ],
  );
}
//Widget _panelMission() => ExpansionPanelList();
