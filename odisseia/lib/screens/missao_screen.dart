import 'package:flutter/material.dart';
import 'package:odisseia/widgets/card_materia.dart';

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
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[questao()],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Finalizar'),
        icon: Icon(Icons.save),
        backgroundColor: Color.fromARGB(255, 255, 124, 64),
      ),
    );
  }
}

Widget questao() {
  return Container(
    padding: EdgeInsets.only(left: 10, right: 10, top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // for (var i = 0; i < 3; i++) {
        //   Text("sdgf"),
        // },
        Text(
          "1. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          style: TextStyle(),
        ),
        ListTile(
          title: Text("data"),
          leading: Radio(
            onChanged: (c){print(c);},
            value: 0,
            groupValue: 0,
          ),
        ),
        ListTile(
          title: Text("data"),
          leading: Radio(
            onChanged: (c){print(c);},
            value: 0,
            groupValue: 0,
          ),
        ),
        ListTile(
          title: Text("data"),
          leading: Radio(
            onChanged: (c){print(c);},
            value: 0,
            groupValue: 0,
          ),
        ),
        ListTile(
          title: Text("data"),
          leading: Radio(
            onChanged: (c){print(c);},
            value: 0,
            groupValue: 0,
          ),
        ),
        
      ],
    ),
  );
}
