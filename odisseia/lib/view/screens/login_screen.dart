import 'package:flutter/material.dart';
import 'package:odisseia/data/model/UsuarioLoginDTO.dart';
import 'package:odisseia/presentation/usuario_login_presenter.dart';
import 'package:odisseia/utils/flutter_utils.dart';
import 'package:odisseia/view/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen>
    implements IUsuarioLoginContract {
  TextEditingController _loginController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();

  String _failText = "";
  UsuarioLoginPresenter _presenter;

  _LoginState() {
    _presenter = UsuarioLoginPresenter(this);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 38, 66),
      body: Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      "images/Logo_Reduzida_Branca.png",
                      width: 150,
                    ),
                    Text(
                      "ALUNO",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Augustus'),
                    ),
                  ],
                ),
              ],
            ),
            SingleChildScrollView(
              child: _form(context),
            )
          ],
        ),
      ),
    );
  }

  Widget _form(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              controller: _loginController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white, width: 1.5),
                ),
                prefixIcon: Icon(Icons.person, color: Colors.white),
                labelText: 'LOGIN',
                labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'RobotoCondensed-Regular'),
              ),
            ),
          ),
          TextField(
            style: TextStyle(color: Colors.white),
            controller: _senhaController,
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 1.5),
              ),
              prefixIcon: Icon(Icons.lock, color: Colors.white),
              labelText: 'PASSWORD',
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'RobotoCondensed-Regular'),
            ),
          ),
          RaisedButton(
            color: Color.fromARGB(255, 35, 90, 159),
            child: Text(
              "ENTRAR",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'RobotoCondensed-Regular',
                  fontSize: 18.0),
            ),
            onPressed: () async {
              _presenter.login(UsuarioLoginDTO(
                  login: _loginController.text, senha: _senhaController.text));
            },
          ),
          Text(
            _failText,
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white),
          )
        ],
      );

  @override
  void onValidateLogin(bool isValido) {
    if (isValido) {
      FlutterUtils.goToScreen(context, HomeScreen());
    } else {
      setState(() {
        _failText = "Login ou senha Inválida";
      });
    }
  }

  @override
  void onValidateLoginError() {
    _failText = "Verifique sua conexão com a internet !";
  }
}
