import 'package:flutter/material.dart';
import 'package:odisseia/domain/usuario_domain.dart';
import 'package:odisseia/models/UsuarioLoginDTO.dart';
import 'package:odisseia/screens/login_screen.dart';

void main() async{

UsuarioLoginDTO loginDTO = UsuarioLoginDTO("clebin@gmail.com","1234");
print(loginDTO.toJson());

UsuarioDomain usuarioDomain = new UsuarioDomain();
bool logado = await  usuarioDomain.login(loginDTO);
if(logado){
  print("logado");
}
else{
  print("login ou senha invalidos");
}

runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "ODISSEIA",
  home: LoginScreen()
));
}
