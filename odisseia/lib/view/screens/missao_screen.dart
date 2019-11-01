import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:odisseia/data/model/MissaoResolucaoDTO.dart';
import 'package:odisseia/presentation/missao_resolution_presenter.dart';
import 'package:odisseia/view/listViews/questao_list_view.dart';
import 'package:odisseia/view/widgets/bottomSheet_missaoFinalizada.dart';

class MissaoScreen extends StatefulWidget {
  final int missaoId;
  final int missaoAlunoId;
  MissaoScreen(this.missaoId, this.missaoAlunoId);

  @override
  _MissaoScreenState createState() =>
      _MissaoScreenState(this.missaoId, this.missaoAlunoId);
}

class _MissaoScreenState extends State<MissaoScreen>
    implements IMissaoResolucaoViewContract {
  final int missaoId;
  final int missaoAlunoId;
  bool _hasNextPage = true;
  bool _hasPreviousPage = false;
  MissaoResolucaoPresenter _presenter;
  
  @override
  void initState() {
    super.initState();
  }

  List<MissaoResolucaoDTO> listResolucaoDTO = new List<MissaoResolucaoDTO>();

  final GlobalKey<QuestaoListViewState> _key = GlobalKey();
  _MissaoScreenState(this.missaoId, this.missaoAlunoId) {
    _presenter = MissaoResolucaoPresenter(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 38, 66),
        title: Text(
          "ODISSEIA",
          style: TextStyle(
            fontFamily: 'Augustus',
            fontSize: 25.0,
            color: Colors.white
            ),
          ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            color: Color.fromARGB(255, 9, 38, 66),
            child: ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 15, left: 10),
                    child: QuestaoListView(_key, missaoId, this, missaoAlunoId),
                ),
              ],
            ),
          ),
          _hasPreviousPage ? _getButtonPreviousQuestion() : Text(""),
          _hasNextPage ? _getButtonNextQuestion() : _getButtonFinalizar(),
        ],
      ),
    );
  }

  Widget _getButtonPreviousQuestion() => Padding(
        padding: EdgeInsets.only(bottom: 10, left: 10),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: FloatingActionButton(
            disabledElevation: 10,
            heroTag: "btnVoltar",
            onPressed: () {
              if (_hasPreviousPage) {
                listResolucaoDTO.removeLast();
                _key.currentState.previousQuestion();
              }
            },
            child: Icon(Icons.keyboard_arrow_left),
            backgroundColor: Color.fromARGB(255, 35, 90, _hasPreviousPage ? 159 : 0),
          ),
        ),
      );

  Widget _getButtonNextQuestion() => Padding(
        padding: EdgeInsets.only(bottom: 10, right: 10),
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            heroTag: "btnProxima",
            onPressed: () {
              listResolucaoDTO.add(
                  MissaoResolucaoDTO.build(_key.currentState.resolucaoDTO));
              _key.currentState.nextQuestion();
            },
            child: Icon(Icons.keyboard_arrow_right),
            backgroundColor: Color.fromARGB(255, 35, 90, 159),
          ),
        ),
      );

  Widget _getButtonFinalizar() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 10, right: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                heroTag: "btnFinalizar",
                onPressed: () {
                  _key.currentState.finalizeQuestion();
                  listResolucaoDTO.add(MissaoResolucaoDTO.build(_key.currentState.resolucaoDTO));
                  _presenter.submit(listResolucaoDTO);
                  
                },
                label: Text('Finalizar'),
                icon: Icon(Icons.save),
                backgroundColor: Color.fromARGB(255, 35, 90, 159),
              ),
            ),
          ),
        ],
      );

  @override
  void hasNextPage(bool hasNextPage) {
    setState(() {
      this._hasNextPage = hasNextPage;
    });
  }

  @override
  void hasPreviousPage(bool hasPreviousPage) {
    setState(() {
      this._hasPreviousPage = hasPreviousPage;
    });
  }

  @override
  void onFailFinalizarMissao() {
    print("deu ruim");
  }

  @override
  void onFinalizarMissaoLoadResult(bool result) {
    Navigator.pop(context);
    BottomSheetMissaoFinalizada().build(context);
    //Exibir sucesso
    print("salvou");
  }
}
