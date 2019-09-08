import 'package:odisseia/data/model/CardMissaoDTO.dart';
import 'package:odisseia/data/repository/card_missao_repository.dart';

abstract class ICardMissaoListContract{
  void onLoadCardMissaoComplete(List<CardMissaoDTO> items);
  void onLoadCardMissaoError();
}

class CardMissaoListPresenter {
  ICardMissaoListContract _view;
  CardMissaoRepository _repository;
  
  CardMissaoListPresenter (this._view) {
    _repository = new CardMissaoRepository();
  }

  void loadCurrencies() {
    _repository.feetchListCardMissaoDTO()
    .then((cardList) => _view.onLoadCardMissaoComplete(cardList))
    .catchError((error) => _view.onLoadCardMissaoError());
  }
}