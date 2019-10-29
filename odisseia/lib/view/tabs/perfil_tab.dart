import 'package:flutter/material.dart';
import 'package:odisseia/view/widgets/custom_drawer.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PerfilTab extends StatefulWidget {
  @override
  _PerfilTabState createState() => _PerfilTabState();
}

class _PerfilTabState extends State<PerfilTab> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      backgroundColor: Color.fromARGB(255, 9, 38, 66),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 20),
            child: Column(
              children: <Widget>[
                Container(
                  height: 350,
                  child: Image.asset(
                    'images/avatar.jpg',
                    width: size.width,
                    height: size.height,
                    fit: BoxFit.fill,
                  ),
                ),
                info
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0, left: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
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
          ),
        ],
      ),
    );
  }
}

Widget avatar = Container(); //Avatar

// info = Junção dos componentes abaixo do avatar
Widget info = Container(
  padding: EdgeInsets.only(left: 20, right: 20),
  child: Column(
    children: <Widget>[level, descricao, btnConquistas],
  ),
);

Widget level = Padding(
  padding: EdgeInsets.only(top: 10.0),
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "39% para Lvl 11",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'RobotoCondensed-Regular',
                fontSize: 18.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.0),
          child: FittedBox(
            child: LinearPercentIndicator(
              width: 400.0,
              lineHeight: 10.0,
              percent: 0.6,
              backgroundColor: Color.fromARGB(255, 35, 90, 159),
              progressColor: Colors.white,
            ),
          ),
        ),
      ],
    ),
  ),
);

Widget descricao = Padding(
  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        "GUERREIRO",
        style: TextStyle(
            fontFamily: 'AUGUSTUS', fontSize: 20, color: Colors.white),
      ),
      Padding(
        padding: EdgeInsets.only(top: 7.0),
        child: Text(
          "Tem a bravura de Hércules e Perseu juntos. É capas de enfrentar os mais terríveis obstáculos, como os desafios do Marcão. Mas ainda precisa lutar bastante para seu nome ser eterno.",
          style: TextStyle(
              fontFamily: 'RobotoCondensed-Regular',
              fontSize: 15,
              color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  ),
);

Widget btnConquistas = Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    FloatingActionButton.extended(
      heroTag: "btnConquistas",
      onPressed: () {},
      label: Text(
        'CONQUISTAS',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'RobotoCondensed-Regular',
          fontSize: 20.0,
        ),
      ),
      icon: Image.asset(
        'images/trophy.png',
        width: 20,
        height: 20,
      ),
      backgroundColor: Color.fromARGB(255, 35, 90, 159),
    )
  ],
);
