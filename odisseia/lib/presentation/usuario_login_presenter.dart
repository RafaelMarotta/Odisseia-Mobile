import 'package:odisseia/data/model/AlunoDTO.dart';
import 'package:odisseia/data/model/UsuarioLoginDTO.dart';
import 'package:odisseia/data/repository/aluno_repository.dart';

abstract class IUsuarioLoginContract {
  void onValidateLogin(bool isValido);
  void onValidateLoginError();
}

class UsuarioLoginPresenter {
  IUsuarioLoginContract _view;
  IAlunoRepository _repository;
  
  UsuarioLoginPresenter(this._view) {
    _repository = new AlunoRepository();
  }

  void login(UsuarioLoginDTO loginDTO){
    _repository.login(loginDTO)
    .then((loginStatus) => _view.onValidateLogin(loginStatus))
    .catchError((error) => _view.onValidateLoginError());
  }

}