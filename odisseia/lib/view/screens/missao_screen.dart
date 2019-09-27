import 'package:flutter/material.dart';
import 'package:odisseia/presentation/Contracts/pagination_contract.dart';
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
    implements IPaginationContract {
  final int missaoId;
  final int missaoAlunoId;
  bool _hasNextPage = true;
  bool _hasPreviousPage = false;

  final GlobalKey<QuestaoListViewState> _key = GlobalKey();
  _MissaoScreenState(this.missaoId, this.missaoAlunoId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 124, 64),
        title: Image.asset("images/logo.png"),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            color: Colors.white,
            child: ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: QuestaoListView(_key, missaoId, this, missaoAlunoId))
              ],
            ),
          ),
          _getButtonPreviousQuestion(),
          _hasNextPage ? _getButtonNextQuestion() : _getButtonFinalizar(),
        ],
      ),
    );
  }

  Widget _getButtonPreviousQuestion() => Padding(
        padding: EdgeInsets.only(bottom: 10, left: 10),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: FloatingActionButton.extended(
            disabledElevation: 10,
            heroTag: "btnVoltar",
            onPressed: () =>
                _hasPreviousPage ? _key.currentState.previousQuestion() : {},
            label: Text('Voltar'),
            //icon: Icon(Icons.keyboard_arrow_left),
            backgroundColor:
                Color.fromARGB(255, 255, 124, _hasPreviousPage ? 64 : 5),
          ),
        ),
      );

  Widget _getButtonNextQuestion() => Padding(
        padding: EdgeInsets.only(bottom: 10, right: 10),
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton.extended(
            heroTag: "btnProxima",
            onPressed: () => _key.currentState.nextQuestion(),
            label: Text('Próxima'),
            //icon: Icon(Icons.keyboard_arrow_right),
            backgroundColor: Color.fromARGB(255, 255, 124, 64),
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
                  Navigator.pop(context);
                  BottomSheetMissaoFinalizada().build(context);
                },
                label: Text('Finalizar'),
                icon: Icon(Icons.save),
                backgroundColor: Color.fromARGB(255, 255, 124, 64),
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
}

