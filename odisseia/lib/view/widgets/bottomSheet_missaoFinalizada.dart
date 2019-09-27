import 'package:flutter/material.dart';
import 'package:odisseia/utils/flutter_utils.dart';
import 'package:odisseia/view/screens/home_screen.dart';

class BottomSheetMissaoFinalizada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.white,
            height: 130,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        "Missão finalizada com sucesso. Parabéns guerreiro!",
                        style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular',
                          fontSize: 22,
                        ),
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
                            borderRadius: BorderRadius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 130, 130, 130),
                          style: BorderStyle.solid,
                          width: 1.5,
                        ),
                        onPressed: () {FlutterUtils.goToScreen(context,HomeScreen());},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
     return null;
  }
}
