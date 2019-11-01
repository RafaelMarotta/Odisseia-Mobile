import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:odisseia/view/screens/home_screen.dart';
import 'package:odisseia/view/screens/perfil_screen.dart';
import 'package:odisseia/view/tiles/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildDrawerBack() => Container(
          color: Color.fromARGB(255, 35, 90, 159),
        );

    Widget _buildListView() => ListView(
          padding: EdgeInsets.only(top: 50, right: 40),
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
              margin: EdgeInsets.only(top: 15, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    "Encantado",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontFamily: 'DalekPinpointBold'),
                  ),
                ],
              ),
            ),
            DrawerTile("images/helmet.png", "PERFIL", PerfilScreen()),
            DrawerTile("images/scroll.png", "MISSÕES", HomeScreen())
          ],
        );

    return Drawer(
      child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              _buildDrawerBack(),
              _buildListView(),
              Positioned(
                  child: Image.asset(
                    "images/meandro_grego.png",
                    width: 40,
                    height: 100000,
                    repeat: ImageRepeat.repeat,
                  ),
                  right: 0),
            ],
          )
        ],
      ),
    );
  }
}
