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
      backgroundColor: Color.fromARGB(255, 9, 38, 66),
      body: Container(
        padding: EdgeInsets.only(top: 25, left: 20, right: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backLogin.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: _form(context),
      ),
    );
  }

  Widget _form(BuildContext context) => ListView(
    children: <Widget>[
      SizedBox(
        width: 80,
        height: 80,
        child: Image.asset('images/Logo_Reduzida_Branca.png'),
      ),
      SizedBox(
        height: 30,
      ),
      TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: _loginController,
        decoration: InputDecoration(
          labelText: "LOGIN",
          labelStyle: TextStyle(
            fontSize: 18,
            fontFamily: 'Augustus',
            color: Colors.white,
          ),
        ),
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
      TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        controller: _senhaController,
        decoration: InputDecoration(
          labelText: "SENHA",
          labelStyle: TextStyle(
            fontSize: 18,
            fontFamily: 'Augustus',
            color: Colors.white,
          ),
        ),
        style: TextStyle(color: Colors.white70),
      ),
      SizedBox(
        height: 20,
      ),
      RaisedButton(
        color: Colors.white,
        child: Text(
          "ENTRAR",
          style: TextStyle(
              color: Color.fromARGB(255, 35, 90, 159),
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
      ),
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
