import 'package:odisseia/data/model/QuestaoDTO.dart';
import 'package:odisseia/data/model/QuestaoPaginationDTO.dart';
import 'package:odisseia/data/repository/questao_repository.dart';
import 'package:odisseia/presentation/Contracts/pagination_contract.dart';

abstract class IQuestaoListViewContract{
  void onLoadQuestaoPaginationComplete(QuestaoPaginationDTO questaoPaginationDTO);
  void onLoadQuestaoPaginationError();
}

class QuestaoResolutionPresenter {
  IQuestaoListViewContract _view;
  IQuestaoRepository _repository;
  IPaginationContract _pagination;
  
  QuestaoResolutionPresenter(this._view,this._pagination) {
    _repository = new QuestaoRepository();
  }

  void loadCurrencies(int missaoId,int ordem) {
    _repository.fetchQuestaoPaginationDTO(missaoId,ordem)
    .then((dto) => _sendComplete(dto))
    .catchError((error) => _view.onLoadQuestaoPaginationError());
  }

  void _sendComplete(QuestaoPaginationDTO dto) {
    _view.onLoadQuestaoPaginationComplete(dto);
    _pagination.hasNextPage(dto.hasNextPage);
    _pagination.hasPreviousPage(dto.hasPreviousPage);
  }
}