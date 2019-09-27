import 'dart:convert';

import 'package:odisseia/data/model/QuestaoDTO.dart';
import 'package:odisseia/data/model/QuestaoPaginationDTO.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';


class QuestaoRepository implements IQuestaoRepository{
  @override
  Future<QuestaoPaginationDTO> fetchQuestaoPaginationDTO(int missaoId,int ordem) async {
    String json = await Http.get(ApiUtils.QUESTAORESOLUCAO+missaoId.toString()+"/"+ordem.toString());
    final parsed = jsonDecode(json);
    return QuestaoPaginationDTO.fromJson(parsed);
  }
}