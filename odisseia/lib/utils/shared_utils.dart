import 'dart:convert';

import 'package:odisseia/data/model/AlunoDTO.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedUtils {
  Future<AlunoDTO> getAlunoLogado() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.get('aluno') == null) {
      return null;
    }
    return AlunoDTO.fromJson(jsonDecode(prefs.get('aluno')));
  }
}
