import 'package:flutter/material.dart';
import 'package:odisseia/view/screens/missao_screen.dart';


class Alertonsetofattack extends StatelessWidget {
  final int missaoId;
  final int missaoAlunoId;
  Alertonsetofattack(this.missaoId,this.missaoAlunoId);

  @override
  Widget build(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return _buildAlertDialog(context);
        });
    return null;
  }

  _buildAlertDialog(BuildContext context) => AlertDialog(
        title: Text("Confirmado o início desse ataque guerreiro?"),
        //content: Text("Essa funcionalidade está sendo implementada!"),
        actions: <Widget>[
          //Image.asset("images/swords.png")
          RaisedButton(
            color: Colors.white,
            child: Text(
              "Não",
              style: TextStyle(color: Colors.blue),
            ),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.blue),
                borderRadius: new BorderRadius.circular(2.5)),
            elevation: 0,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          RaisedButton(
            color: Colors.blue,
            child: Text(
              "Confirmado",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MissaoScreen(this.missaoId,this.missaoAlunoId)),
              );
            },
          )
        ],
      );
}
