import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Perfil2Tab extends StatefulWidget {
  @override
  _Perfil2TabState createState() => _Perfil2TabState();
}

class _Perfil2TabState extends State<Perfil2Tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 124, 64),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10),
        margin: EdgeInsets.only(right: 35, left: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _card(),
            _gridButtons(),
          ],
        ),
      ),
    );
  }
}

Widget _card() => Card(
      elevation: 2,
      color: Color.fromARGB(255, 255, 124, 64),
      child: Column(
        children: <Widget>[
          //Photo and Name
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: GestureDetector(
              child: Container(
                width: 120,
                height: 120,
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              ),
            ),
          ),
          Text(
            "Arthur Pimenta Braga",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          //Level
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
              ),
              LinearPercentIndicator(
                width: 200,
                lineHeight: 10,
                percent: 0.2,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
                center: new Text(
                  "20%",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                leading: Text(
                  "Lvl1",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Text(
                  "Lvl2",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );

Widget _gridButtons() => Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 15),
            child: _row1(),
          ),
          _row2(),
        ],
      ),
    );

Widget _row1() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 27),
          child: RaisedButton(
            elevation: 2,
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 50, right: 50),
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.people,
                  size: 30,
                  color: Color.fromARGB(255, 255, 124, 64),
                ),
                Text(
                  "Mapa",
                  style: TextStyle(color: Color.fromARGB(255, 255, 124, 64)),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
        RaisedButton(
          elevation: 2,
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.people,
                size: 30,
                color: Color.fromARGB(255, 255, 124, 64),
              ),
              Text(
                "Personagem",
                style: TextStyle(color: Color.fromARGB(255, 255, 124, 64)),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ],
    );

Widget _row2() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 27),
          child: RaisedButton(
            elevation: 2,
            padding: EdgeInsets.only(top: 15, bottom: 15, left: 49, right: 49),
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.people,
                  size: 30,
                  color: Color.fromARGB(255, 255, 124, 64),
                ),
                Text(
                  "Barco",
                  style: TextStyle(color: Color.fromARGB(255, 255, 124, 64)),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
        RaisedButton(
          elevation: 2,
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 41, right: 41),
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.people,
                size: 30,
                color: Color.fromARGB(255, 255, 124, 64),
              ),
              Text(
                "Evolução",
                style: TextStyle(color: Color.fromARGB(255, 255, 124, 64)),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ],
    );
