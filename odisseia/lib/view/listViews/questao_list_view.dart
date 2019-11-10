import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odisseia/data/model/AlternativaDTO.dart';
import 'package:odisseia/data/model/MissaoResolucaoDTO.dart';
import 'package:odisseia/data/model/QuestaoDTO.dart';
import 'package:odisseia/data/model/QuestaoPaginationDTO.dart';
import 'package:odisseia/presentation/Contracts/pagination_contract.dart';
import 'package:odisseia/presentation/questao_resolution_presenter.dart';

import '../../data/repository/missao_resolucao_repository.dart';

class QuestaoListView extends StatefulWidget {
  final int _missaoId;
  final int _missaoAlunoId;
  final IPaginationContract _pagination;

  QuestaoListView(
      Key key, this._missaoId, this._pagination, this._missaoAlunoId)
      : super(key: key);
  QuestaoListViewState createState() =>
      QuestaoListViewState(_missaoId, _pagination, _missaoAlunoId);
}

class QuestaoListViewState extends State<QuestaoListView>
    implements IQuestaoListViewContract {
  final int _missaoId;
  int ordem = 1;
  int selectedValue = 0;
  MissaoResolucaoDTO resolucaoDTO;
  final IPaginationContract _pagination;
  final int _missaoAlunoId;
  Stopwatch stopwatch = Stopwatch();


  QuestaoResolutionPresenter _presenter;
  QuestaoPaginationDTO currencies;

  QuestaoListViewState(this._missaoId, this._pagination, this._missaoAlunoId) {
    _presenter = QuestaoResolutionPresenter(this, _pagination);
  }

  @override
  void initState() {
    super.initState();
    _presenter.loadCurrencies(_missaoId, ordem);
    resolucaoDTO = new MissaoResolucaoDTO(fkMissaoAluno: _missaoAlunoId);
  }

  @override
  Widget build(BuildContext context) {
    return currencies != null
        ? _cardQuestao(this.currencies.items[0])
        : Center(
            child: CircularProgressIndicator(),
          );
  }

  Widget _cardQuestao(QuestaoDTO questaoDTO) {
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              questaoDTO.enunciado,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'RobotoCondensed-Regular',
              ),
            ),
          ),
          ListView.builder(
            itemCount: questaoDTO.alternativas.length,
            itemBuilder: (BuildContext context, int index) =>
                _getAlternativa(questaoDTO.alternativas[index]),
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }

  Widget _getAlternativa(AlternativaDTO alternativaDTO) {
    return Container(
        margin: EdgeInsets.only(top: 15),
        child: RadioListTile(
          title: Text(
            alternativaDTO.texto,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'RobotoCondensed-Regular',
            ),
          ),
          value: alternativaDTO.id,
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value;
              resolucaoDTO.fkAlternativa = value;
            });
          },
        ));
  }

  void nextQuestion() {
    if (currencies.hasNextPage) {
      setState(() {
        ordem++;
        _presenter.loadCurrencies(_missaoId, ordem);
      });
    }
  }

  Future<void> finalizeQuestion() async {
    resolucaoDTO.tempoGasto = resolucaoDTO.tempoGasto != null
        ? resolucaoDTO.tempoGasto + stopwatch.elapsedMilliseconds
        : resolucaoDTO.tempoGasto = stopwatch.elapsedMilliseconds;
    stopwatch = Stopwatch();
    await MissaoResolucaoRepository().saveOrUpdate(resolucaoDTO);
    return Future;
  }

  void previousQuestion() {
    if (currencies.hasPreviousPage) {
      setState(() {
        ordem--;
        _presenter.loadCurrencies(_missaoId, ordem);
      });
    }
  }

  @override
  void onLoadQuestaoPaginationComplete(
      QuestaoPaginationDTO questaoPaginationDTO) {
    setState(() {
      currencies = questaoPaginationDTO;
      selectedValue = currencies.items[0].alternativas[0].id;
      resolucaoDTO.fkQuestao = currencies.items[0].id;
      resolucaoDTO.fkAlternativa = currencies.items[0].alternativas[0].id;
    });
    recoverChanges(resolucaoDTO);
    stopwatch.start();
  }

  void recoverChanges(MissaoResolucaoDTO dto) async {
    MissaoResolucaoDTO dto =
        await MissaoResolucaoRepository().fetchByResolucaoDTO(resolucaoDTO);
    if (dto != null) {
      resolucaoDTO.tempoGasto = dto.tempoGasto;
      resolucaoDTO.fkAlternativa = dto.fkAlternativa;
      selectedValue = dto.fkAlternativa;
    }
  }

  @override
  void onLoadQuestaoPaginationError() {
    print("error");
  }
}
