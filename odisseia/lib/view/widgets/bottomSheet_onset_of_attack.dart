import 'package:flutter/material.dart';
import 'package:odisseia/view/screens/missao_screen.dart';

class BottomSheetOnsetOfAttack extends StatelessWidget {
  final int missaoId;
  final int missaoAlunoId;
  BottomSheetOnsetOfAttack(this.missaoId, this.missaoAlunoId);

  @override
  Widget build(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.black,
          height: 180,
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 40),
                  child: Text(
                    "Confirmado o ataque?",
                    style: TextStyle(
                      fontFamily: 'RobotoCondensed-Regular',
                      fontSize: 22,
                      color: Color.fromARGB(255, 130, 130, 130),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: OutlineButton(
                        child: Image(
                          image: AssetImage("images/close.png"),
                          height: 60.0,
                          width: 60.0,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 130, 130, 130),
                          style: BorderStyle.solid,
                          width: 1.5,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: OutlineButton(
                        child: Image(
                          image: AssetImage("images/done.png"),
                          height: 60.0,
                          width: 60.0,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 130, 130, 130),
                          style: BorderStyle.solid,
                          width: 1.5,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MissaoScreen(this.missaoId, this.missaoAlunoId),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
              ),
            ),
          ),
        );
      },
    );
    return null;
  }
}
