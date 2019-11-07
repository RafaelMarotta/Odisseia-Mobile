import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odisseia/view/listViews/missao_card_finished_list_view.dart';
import 'package:odisseia/view/listViews/missao_card_list_view.dart';
import 'package:odisseia/view/tabs/base_tab.dart';
import 'package:odisseia/view/widgets/custom_drawer.dart';
import 'package:odisseia/view/widgets/modal_choose_home.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 1,
        child: Scaffold(
          key: _scaffoldKey,
          drawer: CustomDrawer(),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Color.fromARGB(255, 9, 38, 66),
            title: Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                "ODISSEIA",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: "augustus"),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.square(70.0),
              child: Padding(
                padding: EdgeInsets.only(bottom: 10, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerRight,
                      child: FloatingActionButton(
                        heroTag: "drawer",
                        onPressed: () {
                          _scaffoldKey.currentState.openDrawer();
                        },
                        child: Icon(Icons.menu),
                        backgroundColor: Color.fromARGB(255, 35, 90, 159),
                        mini: true,
                      ),
                    ),
                    Card(
                      color: Color.fromARGB(255, 35, 90, 159),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 25.0, right: 25.0, bottom: 8.0, top: 8.0),
                        child: Text(
                          "Não Concluidas",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: "RobotoCondensed-Regular"),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: FloatingActionButton(
                        heroTag: "choose",
                        onPressed: () {
                          ModalChooseHome().build(context);
                        },
                        child: Icon(Icons.add),
                        backgroundColor: Color.fromARGB(255, 35, 90, 159),
                        mini: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: MissaoCardListView(),
          ),
          backgroundColor: Color.fromARGB(255, 9, 38, 66),
        ),
      ),
    );
  }
}
