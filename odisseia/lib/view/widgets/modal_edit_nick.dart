import 'package:flutter/material.dart';

class ModalEditNick extends StatelessWidget {
  String title() => "Novo nick:";
  final Widget content = TextField(
    style: TextStyle(color: Colors.white),
    keyboardType: TextInputType.text,
  );

  @override
  Widget build(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return _buildAlertDialog(context);
      },
    );
    return null;
  }

  _buildAlertDialog(BuildContext context) => AlertDialog(
        title: Text(title()),
        content: content,
        actions: <Widget>[
          FlatButton(
            child: Text("Ok"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
}
