import 'package:odisseia/domain/usuario_domain.dart';
import 'package:odisseia/models/AlunoDTO.dart';
import 'package:odisseia/models/UsuarioDTO.dart';
import 'package:odisseia/models/UsuarioLoginDTO.dart';

class UsuarioFacade{
  UsuarioDomain usuarioDomain = UsuarioDomain();
  Future<bool> login(UsuarioLoginDTO loginDTO) async{
    return await usuarioDomain.login(loginDTO);
  }

  Future<UsuarioDTO> getUsuarioLogado() async {
    return await usuarioDomain.getUsuarioLogado();
  }

   Future<AlunoDTO> getAlunoByUsuario(Future<UsuarioDTO> usuario) async{
     return await usuarioDomain.getAlunoByUsuario(await usuario);
   }
}