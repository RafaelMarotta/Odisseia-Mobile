import 'dart:convert';

import 'package:odisseia/data/model/AlunoDTO.dart';
import 'package:odisseia/data/model/MissaoResolucaoDTO.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedUtils {
  static SharedPreferences shared;
  static Future<AlunoDTO> getAlunoLogado() async {
    if (shared.get('aluno') == null) {
      return null;
    }
    return AlunoDTO.fromJson(jsonDecode(shared.get('aluno')));
  }

  static Future<MissaoResolucaoDTO> getMissaoResolucaoDTO(String hash) async {
    if(shared.get(hash) == null) {
      return null;
    }
    return MissaoResolucaoDTO.fromJson(jsonDecode(shared.get(hash)));
  }

  static void save(String key, String json) {
    shared.setString(key, json);
  }
  
  static void initialize() async {
    shared = await SharedPreferences.getInstance();
  }

  
}
