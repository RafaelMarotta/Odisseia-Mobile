import 'package:flutter/material.dart';

class ModalChooseHome extends StatelessWidget {
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
        content: Container(
          height: 185,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: FlatButton(
                  child: Text(
                    "CONCLUÍDAS",
                    style: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontSize: 20.0,
                        fontFamily: "RobotoCondensed-Regular"),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: FlatButton(
                  child: Text(
                    "NÃO CONCLUÍDAS",
                    style: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontSize: 20.0,
                        fontFamily: "RobotoCondensed-Regular"),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: FlatButton(
                  child: Text(
                    "MATÉRIAS",
                    style: TextStyle(
                        color: Color.fromARGB(255, 130, 130, 130),
                        fontSize: 20.0,
                        fontFamily: "RobotoCondensed-Regular"),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      );
}
