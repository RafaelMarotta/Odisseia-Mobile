import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Widget _buildCustomScrollView() => CustomScrollView(
      slivers: <Widget>[
           SliverAppBar(
             expandedHeight: 70,
             floating: true,
             snap: true,
             backgroundColor: Color.fromARGB(255, 255, 124, 64),
             elevation: 0.0,
             title: new Container(
               margin: const EdgeInsets.only(top: 15.0),
               child: Image.asset("images/logo.png",fit: BoxFit.fitWidth,width: 150)
             ),
             centerTitle: true,
             
           )
         ]
    );

    return Stack(
      children: <Widget>[
        _buildCustomScrollView()
      ]
    );
  }
}