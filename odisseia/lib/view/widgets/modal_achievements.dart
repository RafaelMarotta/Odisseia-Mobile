import 'package:flutter/material.dart';

class ModalAchievements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return _buildDialogContent(context);
      },
    );
    return null;
  }

  Widget _buildDialogContent(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(52.0),
          ),
        ),
        contentPadding: EdgeInsets.only(top: 0.0),
        content: _dialogContent(context));
  }

  Widget _dialogContent(BuildContext context) {
    return Container(
      width: 200.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
            child: Container(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 90, 159),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(52.0),
                    topLeft: Radius.circular(52.0)),
              ),
              child: Image.asset(
                "images/boat.png",
                width: 130,
                height: 130,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Conquista Desbloqueada!",
                  style: TextStyle(
                    color: Color.fromARGB(255, 130, 130, 130),
                    fontFamily: 'RobotoCondensed-Regular',
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  "EMBARQUE",
                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 90, 159),
                    fontFamily: 'RobotoCondensed-Bold',
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "1ª missão concluída",
                  style: TextStyle(
                    color: Color.fromARGB(255, 130, 130, 130),
                    fontFamily: 'RobotoCondensed-Regular',
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 35.0,
                ),
                Text(
                  "Você ganhou 10xp",
                  style: TextStyle(
                    color: Color.fromARGB(255, 130, 130, 130),
                    fontFamily: 'RobotoCondensed-Regular',
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
