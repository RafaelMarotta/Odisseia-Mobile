import 'package:odisseia/data/model/UsuarioDTO.dart';
import 'package:odisseia/data/model/UsuarioLoginDTO.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UsuarioRepository implements IUsuarioRepository {
  @override
  Future<bool> login(UsuarioLoginDTO loginDTO) async {
    try {
      String userJson = (await Http.post(ApiUtils.LOGIN, loginDTO.toJson()));
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('usuario', userJson);
      return true;
    } catch (NotFoundExcpetion) {
      return false;
    }
  }
  
}