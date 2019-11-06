import 'package:flutter/material.dart';

class AchievementsButton extends StatefulWidget {
  @override
  _AchievementsButtonState createState() => _AchievementsButtonState();
}

class _AchievementsButtonState extends State<AchievementsButton> {
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
            onPressed: () {},
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