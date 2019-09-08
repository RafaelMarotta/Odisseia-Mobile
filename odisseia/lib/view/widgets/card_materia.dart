import 'package:flutter/material.dart';
import 'package:odisseia/view/widgets/alert_not_implement_yet.dart';

class CardMateria extends StatelessWidget {
  const CardMateria({Key key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 255, 124, 64),
      child: ListTile(
        onTap: (){AlertNotImplementYet().build(context);},
        leading: Image.asset(
          "images/pi.png",
          fit: BoxFit.scaleDown,
          width: 50,
        ),
        title: Text(
          "Matemática",
          style: TextStyle(
              color: Color.fromARGB(255, 16, 6, 17),
              fontFamily: 'DalekPinpointBold',
              fontSize: 18),
        ),
        subtitle: Text(
          "Missões abertas: 1",
          style: TextStyle(
            fontFamily: 'DalekPinpointBold',
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}