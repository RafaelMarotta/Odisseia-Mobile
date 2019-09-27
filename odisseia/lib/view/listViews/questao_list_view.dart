import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odisseia/data/model/AlternativaDTO.dart';
import 'package:odisseia/data/model/MissaoResolucaoDTO.dart';
import 'package:odisseia/data/model/QuestaoDTO.dart';
import 'package:odisseia/data/model/QuestaoPaginationDTO.dart';
import 'package:odisseia/presentation/Contracts/pagination_contract.dart';
import 'package:odisseia/presentation/questao_resolution_presenter.dart';

class QuestaoListView extends StatefulWidget {
  final int _missaoId;
  final int _missaoAlunoId;
  final IPaginationContract _pagination;

  QuestaoListView(Key key,this._missaoId,this._pagination,this._missaoAlunoId) : super(key:key);
  QuestaoListViewState createState() => QuestaoListViewState(_missaoId,_pagination,_missaoAlunoId);
}

class QuestaoListViewState extends State<QuestaoListView> implements IQuestaoListViewContract {
  final int _missaoId;
  int ordem = 1;
  int selectedValue = 0;
  MissaoResolucaoDTO resolucaoDTO;
  final IPaginationContract _pagination;
  final int _missaoAlunoId;

    QuestaoResolutionPresenter _presenter;
  QuestaoPaginationDTO currencies;

  QuestaoListViewState(this._missaoId,this._pagination,this._missaoAlunoId) {
    _presenter = QuestaoResolutionPresenter(this,_pagination);
  }

  @override
  void initState() {
    super.initState();
    _presenter.loadCurrencies(_missaoId,ordem);
    resolucaoDTO = new MissaoResolucaoDTO(fkMissaoAluno: _missaoAlunoId);
  }

  @override
  Widget build(BuildContext context) {
    return currencies != null ?
    _cardQuestao(this.currencies.items[0])
    : Center(child: CircularProgressIndicator() ,);
  }

  Widget _cardQuestao(QuestaoDTO questaoDTO) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          questaoDTO.enunciado,
          style: TextStyle(color: Colors.black, fontSize: 15),
        ),
        ListView.builder(
          itemCount: questaoDTO.alternativas.length,
          itemBuilder: (BuildContext context, int index) => 
          _getAlternativa(questaoDTO.alternativas[index]),
          shrinkWrap: true,
        ),
      ],
    );
  }

  Widget _getAlternativa(AlternativaDTO alternativaDTO){
    return RadioListTile(
      title: Text(
        alternativaDTO.texto,
        style: TextStyle(color: Colors.black, fontSize: 13),
      ),
      value: alternativaDTO.id,
      groupValue: selectedValue,
      onChanged: (value) {
        setState(() {
         selectedValue = value;
         resolucaoDTO.fkAlternativa = value;
        });
      },
    );
  }

  void nextQuestion() {
    setState(() {
      if(currencies.hasNextPage){
        ordem++;
        _presenter.loadCurrencies(_missaoId, ordem);
      }
    });
  }

  void previousQuestion() {
    setState(() {
     if(currencies.hasPreviousPage) {
       ordem --; 
      _presenter.loadCurrencies(_missaoId, ordem);
     }
    });
  }

  @override
  void onLoadQuestaoPaginationComplete(QuestaoPaginationDTO questaoPaginationDTO) {
    setState(() {
      currencies = questaoPaginationDTO; 
      selectedValue = currencies.items[0].alternativas[0].id;
      resolucaoDTO.fkQuestao = currencies.items[0].id;
    });
  }

  @override
  void onLoadQuestaoPaginationError() {
    print("error");
  }
}
