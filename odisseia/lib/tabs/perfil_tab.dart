import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PerfilTab extends StatefulWidget {
  @override
  _PerfilTabState createState() => _PerfilTabState();
}

class _PerfilTabState extends State<PerfilTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[_usuario(), _level(), _buttons()],
          ),
        ],
      )),
    );
  }
}

Widget _usuario() => Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: GestureDetector(
            child: Container(
              width: 120,
              height: 120,
              decoration:
                  BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15, bottom: 15),
          child: Text(
            "Arthur Pimenta Braga",
            style: TextStyle(
              color: Colors.black, 
              fontSize: 20,
              fontFamily: 'DalekPinpointBold'
              ),
          ),
        ),
      ],
    );

Widget _level() => LinearPercentIndicator(
      width: 250,
      lineHeight: 10,
      percent: 0.2,
      backgroundColor: Colors.grey,
      progressColor: Color.fromARGB(255, 255, 124, 64),
      center: new Text(
        "20%",
        style: TextStyle(
          fontSize: 10,
          fontFamily: 'Montserrat-Light',
          ),
      ),
      leading: Text(
        "Lvl1",
        style: TextStyle(fontFamily: 'DalekPinpointBold'),
        ),
      trailing: Text(
        "Lvl1",
        style: TextStyle(fontFamily: 'DalekPinpointBold'),
        ),
    );

Widget _buttons() => Padding(
      padding: EdgeInsets.only(top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            color: Color.fromARGB(255, 255, 124, 64),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.people,
              size: 70,
              color: Colors.white,
            ),
            elevation: 0.5,
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: RaisedButton(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              color: Color.fromARGB(255, 255, 124, 64),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.map,
                size: 70,
                color: Colors.white,
              ),
              elevation: 0.5,
              onPressed: () {},
            ),
          ),
          RaisedButton(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            color: Color.fromARGB(255, 255, 124, 64),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.directions_boat,
              size: 70,
              color: Colors.white,
            ),
            elevation: 0.5,
            onPressed: () {},
          ),
        ],
      ),
    );
