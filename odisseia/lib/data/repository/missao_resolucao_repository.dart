import 'package:odisseia/data/model/MissaoResolucaoDTO.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';

class MissaoResolucaoRepository implements IMissaoResolutionRepository{
  @override
  Future<bool> salvarMissaoResolucao(List<MissaoResolucaoDTO> resolucao) async {
    try {
      await Http.post(ApiUtils.MISSAORESOLUCAO,resolucao.map((m) => m.toJson()).toList());
      return true;
    } catch (NotFoundException) {
      return false;
    }
  }
  
}