import 'dart:convert';
import 'package:odisseia/models/UsuarioDTO.dart';
import 'package:odisseia/models/UsuarioLoginDTO.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';


class UsuarioDomain{
  Future<bool> login(UsuarioLoginDTO loginDTO) async{
    try{
    Map<String, dynamic> usuarioMap = jsonDecode(await Http.post(ApiUtils.LOGIN, loginDTO.toJson()));
    print(UsuarioDTO.fromJson(usuarioMap).nome);
    return true;
    } catch(NotFoundExcpetion) {
      return false;
    }
  }

}