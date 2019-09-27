import 'package:flutter/material.dart';
import 'package:odisseia/data/model/UsuarioLoginDTO.dart';
import 'package:odisseia/presentation/usuario_login_presenter.dart';
import 'package:odisseia/utils/flutter_utils.dart';
import 'package:odisseia/view/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> implements IUsuarioLoginContract {
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
        backgroundColor: Color.fromARGB(255, 255, 124, 64),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 124, 64),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                "images/logo.png",
                fit: BoxFit.scaleDown,
                width: 300,
              ),
              Text(
                "WELCOME",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              _options(),
              _form(context)
            ],
          ),
        ));
  }

  Widget _options() => Padding(
        padding: EdgeInsets.only(top: 80.0, bottom: 10, left: 45),
        child: Row(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: FlatButton(
                color: Colors.white,
                child: Text(
                  "ALUNO",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 124, 64), fontSize: 14),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      );

  Widget _form(BuildContext context) => Container(
        width: 328,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: TextField(
                  controller: _loginController,
                  //style: TextStyle(height: 0),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1.5),
                      ),
                      prefixIcon: Icon(Icons.person, color: Colors.white),
                      labelText: 'LOGIN',
                      labelStyle:
                          TextStyle(color: Colors.white, fontSize: 14))),
            ),
            TextField(
              controller: _senhaController,
              //style: TextStyle(height: 0),
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.5),
                  ),
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  labelText: 'PASSWORD',
                  labelStyle: TextStyle(color: Colors.white, fontSize: 14)),
            ),
            RaisedButton(
              color: Colors.white,
              textColor: Color.fromARGB(255, 255, 124, 64),
              padding: EdgeInsets.only(left: 134, right: 134),
              child: Text(
                "ENTRAR",
                style: TextStyle(fontSize: 14),
              ),
              onPressed: () async {
                _presenter.login(UsuarioLoginDTO(
                    login: _loginController.text,
                    senha: _senhaController.text));
              },
            ),
            Text(
              _failText,
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
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
