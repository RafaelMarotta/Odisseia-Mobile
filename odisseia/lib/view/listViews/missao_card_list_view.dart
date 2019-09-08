import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odisseia/data/model/CardMissaoDTO.dart';
import 'package:odisseia/presentation/card_missao_presenter.dart';
import 'package:odisseia/view/widgets/card_missao.dart';

class MissaoCardListView extends StatefulWidget {
  MissaoCardListView({Key key}) : super(key: key);

  _MissaoCardListViewState createState() => _MissaoCardListViewState();
}

class _MissaoCardListViewState extends State<MissaoCardListView>
    implements ICardMissaoListContract {
  CardMissaoListPresenter _presenter;
  List<CardMissaoDTO> currencies;

  _MissaoCardListViewState() {
    _presenter = CardMissaoListPresenter(this);
  }

  @override
  void initState() {
    super.initState();
    _presenter.loadCurrencies();
  }

  @override
  Widget build(BuildContext context) {
    return currencies != null
        ? ListView.builder(
            itemCount: currencies.length,
            itemBuilder: (BuildContext context, int index) =>
                _getMissaoCard(index))
        : new Center(
            child: new CircularProgressIndicator(),
          );
  }

  Widget _getMissaoCard(int i) => CardMissao(currencies[i]);

  @override
  void onLoadCardMissaoComplete(List<CardMissaoDTO> items) {
    setState(() {
      currencies = items;
    });
  }

  @override
  void onLoadCardMissaoError() {}
}
