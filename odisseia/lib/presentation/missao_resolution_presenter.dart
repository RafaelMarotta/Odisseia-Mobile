
import 'package:odisseia/data/model/MissaoResolucaoDTO.dart';
import 'package:odisseia/data/repository/missao_resolucao_repository.dart';

import 'Contracts/pagination_contract.dart';

abstract class IMissaoResolucaoViewContract extends IPaginationContract{
  void onFinalizarMissaoLoadResult(bool result);
  void onFailFinalizarMissao();
}


class MissaoResolucaoPresenter {
    IMissaoResolutionRepository _repository;
    IMissaoResolucaoViewContract _view;

    MissaoResolucaoPresenter(this._view) {
      _repository = new MissaoResolucaoRepository();
    }

    void submit(List<MissaoResolucaoDTO> dto) {
    _repository.salvarMissaoResolucao(dto)
    .then((dto) => _view.onFinalizarMissaoLoadResult(dto))
    .catchError((error) => _view.onFailFinalizarMissao());
  }
}

