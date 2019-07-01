import 'package:flutter/material.dart';
import 'package:odisseia/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() =>
        Container(color: Color.fromARGB(255, 255, 124, 64));

    Widget _buildListView() => ListView(
          padding: EdgeInsets.only(top: 50),
          children: <Widget>[
            GestureDetector(
              child: Container(
                width: 180,
                height: 180,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,bottom: 40),
              child: Text(
                "LVL 10",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: 'Augustus'
                ),
              )
            ),
            DrawerTile("images/helmet.png","MISSÕES"),
            DrawerTile("images/scroll.png","EVOLUÇÃO")
          ],
        );

    return Drawer(
        child: Stack(children: <Widget>[
      Stack(
        children: <Widget>[
          _buildDrawerBack(),
          _buildListView()
        ],
      )
    ]));
  }
}
