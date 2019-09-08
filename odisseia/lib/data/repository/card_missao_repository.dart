import 'dart:convert';

import 'package:odisseia/data/model/AlunoDTO.dart';
import 'package:odisseia/data/model/CardMissaoDTO.dart';
import 'package:odisseia/data/repository/aluno_repository.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';

class CardMissaoRepository implements ICardMissaoRepository{
  @override
  Future<List<CardMissaoDTO>> feetchListCardMissaoDTO() async {
    AlunoDTO alunoDTO = await new AlunoRepository().feetchAlunoByUsuarioLogado();
     String json = await Http.get(ApiUtils.MISSAOCARD+alunoDTO.id.toString());
      final parsed = jsonDecode(json);
      List<CardMissaoDTO> list = parsed.map<CardMissaoDTO>((json) => CardMissaoDTO.fromJson(json)).toList();
      return list;
  }
}