import 'package:flutter/material.dart';
import 'package:odisseia/view/widgets/modal_achievements.dart';

class ButtonAchievements extends StatefulWidget {
  @override
  _ButtonAchievementsState createState() => _ButtonAchievementsState();
}

class _ButtonAchievementsState extends State<ButtonAchievements> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 80,
          height: 80,
          child: OutlineButton(
            shape: StadiumBorder(),
            child: Image.asset('images/boat.png'),
            borderSide: BorderSide(
                color: Colors.white, style: BorderStyle.solid, width: 1.5),
            onPressed: () {
              ModalAchievements().build(context);
            },
          ),
        ),
        SizedBox(height: 5,),
        Text(
          "Embarque",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'RobotoCondensed-Regular',
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}