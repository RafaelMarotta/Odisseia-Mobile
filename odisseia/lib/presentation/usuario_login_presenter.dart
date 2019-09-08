import 'package:odisseia/data/model/UsuarioDTO.dart';
import 'package:odisseia/data/model/UsuarioLoginDTO.dart';
import 'package:odisseia/data/repository/usuario_repository.dart';

abstract class IUsuarioLoginContract {
  void onValidateLogin(bool isValido);
  void onValidateLoginError();
}

class UsuarioLoginPresenter {
  IUsuarioLoginContract _view;
  IUsuarioRepository _repository;
  
  UsuarioLoginPresenter(this._view) {
    _repository = new UsuarioRepository();
  }

  void login(UsuarioLoginDTO loginDTO){
    _repository.login(loginDTO)
    .then((loginStatus) => _view.onValidateLogin(loginStatus))
    .catchError((error) => _view.onValidateLoginError());
  }

}