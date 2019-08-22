import 'dart:convert';

import 'package:odisseia/models/AlunoDTO.dart';
import 'package:odisseia/models/UsuarioDTO.dart';
import 'package:odisseia/models/UsuarioLoginDTO.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UsuarioDomain {
  
  Future<bool> login(UsuarioLoginDTO loginDTO) async {
    try {
      String userJson = (await Http.post(ApiUtils.LOGIN, loginDTO.toJson()));
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('usuario', userJson);
      return true;
    } catch (NotFoundExcpetion) {
      return false;
    }
  }

  Future<UsuarioDTO> getUsuarioLogado() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.get('usuario') == null) {
      return null;
    }
    return UsuarioDTO.fromJson(jsonDecode(prefs.get('usuario')));
    
  }
  
  Future<AlunoDTO> getAlunoByUsuario(UsuarioDTO usuario) async{
    String alunoJson = await Http.get(ApiUtils.ALUNOBYUSUARIO+usuario.id.toString());
    return AlunoDTO.fromJson(jsonDecode(alunoJson));
  }

}
