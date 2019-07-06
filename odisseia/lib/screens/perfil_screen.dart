import 'package:flutter/cupertino.dart';
import 'package:odisseia/screens/base_screen.dart';
import 'package:odisseia/tabs/perfil_tab.dart';

class PerfilScreen extends BaseScreen {
  @override
  Widget getBody(){
    return PerfilTab();
  }

}