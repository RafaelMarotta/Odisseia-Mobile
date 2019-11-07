import 'package:flutter/material.dart';
import 'package:odisseia/data/model/CardMissaoDTO.dart';
import 'package:odisseia/view/widgets/alert_onset_of_attack.dart';
import 'package:odisseia/view/widgets/bottomSheet_onset_of_attack.dart';

class CardMissao extends StatefulWidget {
  final CardMissaoDTO _cardMissaoDTO;
  CardMissao(this._cardMissaoDTO);

  _CardMissaoState createState() => _CardMissaoState(_cardMissaoDTO);
}

class _CardMissaoState extends State<CardMissao> {
  final CardMissaoDTO _cardMissaoDTO;

  _CardMissaoState(this._cardMissaoDTO);

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
              margin: EdgeInsets.fromLTRB(55.0, 10.0, 10.0, 5.0),
              child: _info(context),
            ),
          ),
          missaoThumbnail,
        ],
      ),
    );
  }

  Widget missaoThumbnail = Container(
    margin: EdgeInsets.symmetric(vertical: 40.0),
    alignment: FractionalOffset.centerLeft,
    child: Image(
      image: AssetImage("images/pi.png"),
      height: 50.0,
      width: 50.0,
    ),
  );

  Widget _info(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          _cardMissaoDTO.titulo,
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
          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: Text(
            _cardMissaoDTO.descricao,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'RobotoCondensed-Regular',
                fontSize: 13.0),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              _cardMissaoDTO.dataPrazo,
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RobotoCondensed-Regular',
                  fontSize: 15.0),
            ),
            RaisedButton(
              color: Colors.white,
              child: Text(
                "ATACAR",
                style: TextStyle(
                    color: Color.fromARGB(255, 35, 90, 159),
                    fontFamily: 'RobotoCondensed-Regular',
                    fontSize: 15.0),
              ),
              onPressed: () {
                BottomSheetOnsetOfAttack(this._cardMissaoDTO.id, this._cardMissaoDTO.fkMissaoAluno).build(context);
              },
            ),
          ],
        ),
      ],
    );
  }
}
