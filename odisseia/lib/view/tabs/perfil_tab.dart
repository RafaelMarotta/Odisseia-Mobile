import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PerfilTab extends StatefulWidget {
  @override
  _PerfilTabState createState() => _PerfilTabState();
}

class _PerfilTabState extends State<PerfilTab> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 20),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 350,
                    child: Center(
                      child: new Image.asset(
                        'images/avatar.jpg',
                        width: size.width,
                        height: size.height,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              info
            ],
          ),
        ));
  }
}

Widget avatar = Container(); //Colocar o Container aqui

Widget info = Container(
  padding: EdgeInsets.only(left: 20, right: 20),
  child: Column(
    children: <Widget>[level, buttons, descricao],
  ),
);

Widget level = Padding(
  padding: EdgeInsets.only(top: 7.0),
  child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "39% para Lvl 11",
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'RobotoCondensed-Regular',
                fontSize: 18.0),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 7.0),
          child: FittedBox(
            child: LinearPercentIndicator(
              width: 350.0,
              lineHeight: 10.0,
              percent: 0.6,
              backgroundColor: Color.fromARGB(255, 35, 90, 159),
              progressColor: Color.fromARGB(255, 255, 124, 64),
            ),
          ),
        ),
      ],
    ),
  ),
);

Widget buttons = Padding(
  padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      SizedBox(
        width: 90,
        height: 90,
        child: FloatingActionButton(
          onPressed: () {},
          heroTag: 'map',
          child: Image(
            image: AssetImage("images/map.png"),
            width: 45,
            height: 45,
          ),
          backgroundColor: Color.fromARGB(255, 255, 124, 64),
        ),
      ),
      SizedBox(
        width: 90,
        height: 90,
        child: FloatingActionButton(
          onPressed: () {},
          heroTag: 'scroll',
          child: Image(
            image: AssetImage("images/scroll2.png"),
            width: 45,
            height: 45,
          ),
          backgroundColor: Color.fromARGB(255, 255, 124, 64),
        ),
      ),
      SizedBox(
        width: 90,
        height: 90,
        child: FloatingActionButton(
          onPressed: () {},
          heroTag: 'boat',
          child: Image(
            image: AssetImage("images/boat.png"),
            width: 45,
            height: 45,
          ),
          backgroundColor: Color.fromARGB(255, 255, 124, 64),
        ),
      ),
    ],
  ),
);

Widget descricao = Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    Text(
      "GUERREIRO",
      style:
          TextStyle(fontFamily: 'AUGUSTUS', fontSize: 20, color: Colors.black),
    ),
    Padding(
      padding: EdgeInsets.only(top: 7.0),
      child: Text(
        "Tem a bravura de Hércules e Perseu juntos. É capas de enfrentar os mais terríveis obstáculos, como os desafios do Marcão. Mas ainda precisa lutar bastante para seu nome ser eterno.",
        style: TextStyle(
            fontFamily: 'RobotoCondensed-Regular',
            fontSize: 15,
            color: Colors.black),
        textAlign: TextAlign.center,
      ),
    ),
  ],
);
