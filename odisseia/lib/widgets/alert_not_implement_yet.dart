import 'package:flutter/material.dart';

class AlertNotImplementYet extends StatelessWidget {

  String content() => "Essa funcionalidade está sendo implementada!";
  String title() => "Funcionalidade ainda não implementada !";
  

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
        title: Text(title()),
        content: Text(content()),
        actions: <Widget>[
          FlatButton(
            child: Text("Ok"),
            onPressed: (){Navigator.of(context).pop();}
          )
        ],
    );
}