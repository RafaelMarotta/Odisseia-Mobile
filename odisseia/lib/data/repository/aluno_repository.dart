import 'package:odisseia/data/model/AlunoDTO.dart';
import 'package:odisseia/data/model/UsuarioLoginDTO.dart';
import 'package:odisseia/utils/api_utils.dart';
import 'package:odisseia/utils/http_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AlunoRepository implements IAlunoRepository{
   @override
  Future<bool> login(UsuarioLoginDTO loginDTO) async {
    try {
      String alunoJson = (await Http.post(ApiUtils.LOGIN, loginDTO.toJson()));
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('aluno', alunoJson);
      return true;
    } catch (NotFoundExcpetion) {
      return false;
    }
  }
}