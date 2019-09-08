import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:odisseia/view/widgets/custom_drawer.dart';

class BaseTab extends StatefulWidget {
  final Widget _body;

  BaseTab(this._body,{Key key} );

  _BaseTabState createState() => _BaseTabState(_body);
}

class _BaseTabState extends State<BaseTab> {
  Widget _body;
  _BaseTabState(final Widget body) {
    _body = body;
  }

  @override
  Widget build(BuildContext context) {
    Widget _buildCustomScrollView() => CustomScrollView(
      slivers: <Widget>[
           SliverAppBar(
             expandedHeight: 70,
             floating: true,
             snap: false,
             pinned: true,
             backgroundColor: Color.fromARGB(255, 255, 124, 64),
             elevation: 0.0,
             title: new Container(
               margin: const EdgeInsets.only(top: 15.0),
               child: Image.asset("images/logo.png",fit: BoxFit.fitWidth,width: 150)
             ),
             centerTitle: true,
           ),
          SliverFillRemaining(child: _body)
         ]
    );

    return 
    Scaffold(
      drawer: CustomDrawer(),
      body: Stack(
      children: <Widget>[
        _buildCustomScrollView(),
      ]
      )
    );
    
  }
}