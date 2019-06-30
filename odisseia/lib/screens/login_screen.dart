import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Page Login", home: Test()));
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 124, 64),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 124, 64),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            "assets/logo.png",
            fit: BoxFit.scaleDown,
            width: 300,
          ),
          Text(
            "WELCOME",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          _options(),
          _form(),
        ],
      ),
    );
  }
}

Widget _options() => Padding(
      padding: EdgeInsets.only(top: 80.0, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: FlatButton(
                color: Colors.white,
                child: Text(
                  "ALUNO",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 124, 64), fontSize: 14),
                ),
                onPressed: () {},
              )),
          Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: FlatButton(
                child: Text(
                  "PROFESSOR",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                onPressed: () {},
              )),
          Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: FlatButton(
                child: Text(
                  "ESCOLA",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                onPressed: () {},
              )),
        ],
      ),
    );

Widget _form() => Container(
      width: 328,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 5),
            child: TextField(
                //style: TextStyle(height: 0),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.white, width: 1.5),
                    ),
                    prefixIcon:
                        Icon(Icons.account_balance, color: Colors.white),
                    labelText: 'LOGIN',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 14))),
          ),
          TextField(
            //style: TextStyle(height: 0),
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 1.5),
                ),
                prefixIcon: Icon(Icons.keyboard_capslock, color: Colors.white),
                labelText: 'PASSWORD',
                labelStyle: TextStyle(color: Colors.white, fontSize: 14)),
          ),
          RaisedButton(
            color: Colors.white,
            textColor: Color.fromARGB(255, 255, 124, 64),
            padding: EdgeInsets.only(left: 137, right: 137),
            child: Text(
              "ENTRAR",
              style: TextStyle(fontSize: 14),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
