import 'package:flutter/material.dart';
import 'package:odisseia/utils/shared_utils.dart';
import 'package:odisseia/view/screens/login_screen.dart';

import 'data/repository/missao_resolucao_repository.dart';

void main(){
SharedUtils.initialize();
MissaoResolucaoRepository().deleteAll();

runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "ODISSEIA",
  home: LoginScreen()
));
}
