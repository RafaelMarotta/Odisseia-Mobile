import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odisseia/view/listViews/missao_card_list_view.dart';
import 'package:odisseia/view/tabs/base_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return BaseTab(MaterialApp(
      debugShowCheckedModeBanner: false,
        home: DefaultTabController(
      length: 1,
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
                _getTab("Não Concluídas")
              ],
            )),
          ),
        ),
        body: MissaoCardListView()
      ),
    )));
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
}
