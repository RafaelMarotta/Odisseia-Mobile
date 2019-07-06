import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odisseia/screens/base_screen.dart';

class DrawerTile extends StatelessWidget {
  
  final String picture;
  final String text;
  final BaseScreen screen;

  DrawerTile(this.picture,this.text,this.screen);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
          Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => screen),
            );
        },
        child: Container(
          margin: EdgeInsets.only(top:30),
          height: 45.0,
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left:20,right:20),
                child: Image.asset(this.picture)
              ),
              Text(
                this.text,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),
                )
            ],
          ),
        ),
      ),
    );
  }
}