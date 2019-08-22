import 'dart:convert';

import 'package:odisseia/models/AlunoDTO.dart';
import 'package:odisseia/models/CardMissaoDTO.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';


class MissaoDomain{
  Future<List<CardMissaoDTO>> findListCardMissaoDTOByAlunoDTO(AlunoDTO alunoDTO) async{
      String json = await Http.get(ApiUtils.MISSAOCARD+alunoDTO.id.toString());
      final parsed = jsonDecode(json);
      List<CardMissaoDTO> list = parsed.map<CardMissaoDTO>((json) => CardMissaoDTO.fromJson(json)).toList();
      return list;
  }
}