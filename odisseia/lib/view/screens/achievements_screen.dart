import 'package:flutter/material.dart';
import 'package:odisseia/view/widgets/button_achievements.dart';

class AchievementsScreen extends StatefulWidget {
  @override
  _AchievementsScreenState createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 38, 66),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Image.asset(
              'images/trophy.png',
              width: 20,
              height: 20,
            ),
          ),
        ],
        title: Text(
          "CONQUISTAS",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'RobotoCondensed-Regular',
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        color: Color.fromARGB(255, 9, 38, 66),
        child: GridView(
          physics: BouncingScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          children: <Widget>[ButtonAchievements()],
        ),
      ),
    );
  }
}
