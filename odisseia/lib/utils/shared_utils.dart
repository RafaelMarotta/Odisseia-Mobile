import 'dart:convert';

import 'package:odisseia/data/model/UsuarioDTO.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedUtils {
  Future<UsuarioDTO> getUsuarioLogado() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.get('usuario') == null) {
      return null;
    }
    return UsuarioDTO.fromJson(jsonDecode(prefs.get('usuario')));
  }
}
