import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odisseia/facade/missao_facade.dart';
import 'package:odisseia/facade/usuario_facade.dart';
import 'package:odisseia/models/AlunoDTO.dart';
import 'package:odisseia/models/CardMissaoDTO.dart';
import 'package:odisseia/screens/base_screen.dart';
import 'package:odisseia/widgets/card_materia.dart';
import 'package:odisseia/widgets/card_missao.dart';


class HomeScreen extends BaseScreen {
  UsuarioFacade usuarioFacade = UsuarioFacade();
  MissaoFacade missaoFacade = MissaoFacade();

  @override
  Widget getBody() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  return ListView(  //Criar uma lista para os cards, e exibilos aqui em uma ListView.builder
    children: <Widget>[
      CardMateria(),
      CardMateria(),
      CardMateria(),
      CardMateria(),
      CardMateria(),
      CardMateria(),
    ],
  );
}
Widget _getMissoes() => FutureBuilder<List<CardMissaoDTO>> (
    builder: (context,snapshot){
      if(snapshot.connectionState == ConnectionState.done && snapshot.data != null) {
      return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (context, index) {
          CardMissaoDTO dto = snapshot.data[index];
          return Column(
            children: <Widget>[
              CardMissao(dto)
              // Widget to display the list of project
            ],
          );
        },
      );
    }
      return Text("Carregando ...");
    },
    future: missaoFacade.findListCardMissaoDTOByAlunoDTO()
  );

}
//Widget _panelMission() => ExpansionPanelList();
