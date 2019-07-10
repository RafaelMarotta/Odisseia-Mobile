import 'package:flutter/material.dart';

class AlertNotImplementYet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      showDialog(
      context: context,
      builder: (BuildContext context){
        return _buildAlertDialog(context);
      }
    );
    return null;
  }

  _buildAlertDialog(BuildContext context) => AlertDialog(
        title: Text("Funcionalidade ainda não implementada !"),
        content: Text("Essa funcionalidade está sendo implementada!"),
        actions: <Widget>[
          FlatButton(
            child: Text("Ok"),
            onPressed: (){Navigator.of(context).pop();}
          )
        ],
    );
}