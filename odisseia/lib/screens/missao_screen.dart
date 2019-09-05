import 'package:flutter/material.dart';

class Missao_Screen extends StatefulWidget {
  @override
  _Missao_ScreenState createState() => _Missao_ScreenState();
}

class _Missao_ScreenState extends State<Missao_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 124, 64),
        title: Image.asset("images/logo.png"),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: cardQuestao(),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton.extended(
                onPressed: () {},
                label: Text('Recuar'),
                //icon: Icon(Icons.keyboard_arrow_left),
                backgroundColor: Color.fromARGB(255, 255, 124, 64),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, right: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                onPressed: () {},
                label: Text('Avançar'),
                //icon: Icon(Icons.keyboard_arrow_right),
                backgroundColor: Color.fromARGB(255, 255, 124, 64),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget cardQuestao() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        style: TextStyle(color: Colors.black, fontSize: 15),
      ),
      RadioListTile(
        title: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        value: 0,
        groupValue: 0,
        onChanged: (c) {
          print(c);
        },
      ),
      RadioListTile(
        title: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        value: 0,
        groupValue: 0,
        onChanged: (c) {
          print(c);
        },
      ),
      RadioListTile(
        title: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        value: 0,
        groupValue: 0,
        onChanged: (c) {
          print(c);
        },
      ),
      RadioListTile(
        title: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        value: 0,
        groupValue: 0,
        onChanged: (c) {
          print(c);
        },
      ),
    ],
  );
}

Widget buttonFinalizar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 5, left: 5),
        child: FlatButton.icon(
          color: Color.fromARGB(255, 255, 124, 64),
          icon: Icon(
            Icons.save,
            color: Colors.white,
          ),
          label: Text(
            "Finalizar",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}
