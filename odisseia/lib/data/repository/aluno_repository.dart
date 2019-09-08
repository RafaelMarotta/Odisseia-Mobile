import 'dart:convert';

import 'package:odisseia/data/model/AlunoDTO.dart';
import 'package:odisseia/data/model/UsuarioDTO.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';
import 'package:odisseia/utils/shared_utils.dart';

class AlunoRepository implements IAlunoRepository{
  @override
  Future <AlunoDTO> feetchAlunoByUsuarioLogado() async{
     UsuarioDTO usuario = await SharedUtils().getUsuarioLogado();
     String alunoJson = await Http.get(ApiUtils.ALUNOBYUSUARIO+usuario.id.toString());
    return AlunoDTO.fromJson(jsonDecode(alunoJson));
  }
  
}