import 'package:flutter/material.dart';
import 'package:odisseia/data/model/CardMissaoDTO.dart';
import 'package:odisseia/view/widgets/alert_onset_of_attack.dart';

class CardMissaoFinished extends StatefulWidget {
  final CardMissaoDTO _cardMissaoDTO;
  CardMissaoFinished(this._cardMissaoDTO);

  _CardMissaoFinishedState createState() =>
      _CardMissaoFinishedState(_cardMissaoDTO);
}

class _CardMissaoFinishedState extends State<CardMissaoFinished> {
  final CardMissaoDTO _cardMissaoDTO;

  _CardMissaoFinishedState(this._cardMissaoDTO);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Stack(
        children: <Widget>[
          Card(
            color: Color.fromARGB(255, 35, 90, 159),
            margin: EdgeInsets.only(left: 30.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(45.0, 10.0, 10.0, 15.0),
              child: _info(context),
            ),
          ),
          missaoThumbnail,
        ],
      ),
    );
  }

  Widget missaoThumbnail = Container(
    margin: EdgeInsets.symmetric(vertical: 35.0, horizontal: 7.0),
    alignment: FractionalOffset.centerLeft,
    child: Image(
      image: AssetImage("images/pi.png"),
      height: 45.0,
      width: 45.0,
    ),
  );

  Widget _info(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "Deu certo",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoCondensed-Regular',
              fontSize: 18.0),
        ),
        Text(
          "Matemática",
          style: TextStyle(
              color: Colors.white60,
              fontFamily: 'RobotoCondensed-Regular',
              fontSize: 15.0),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[_buildInfo("Acertos:", "15"), _buildInfo("Erros:", "15"), _buildInfo("Tempo Gasto:", "00:00:00")],
          ),
        ),
      ],
    );
  }

  Widget _buildInfo(String title, String data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoCondensed-Regular',
              fontSize: 15.0),
        ),
        Text(
          data,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'RobotoCondensed-Regular',
              fontSize: 15.0),
        ),
      ],
    );
  }
}
