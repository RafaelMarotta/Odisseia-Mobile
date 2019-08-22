import 'package:odisseia/domain/missao_domain.dart';
import 'package:odisseia/facade/usuario_facade.dart';
import 'package:odisseia/models/CardMissaoDTO.dart';

class MissaoFacade {
  MissaoDomain domain = MissaoDomain();
  UsuarioFacade usuarioFacade = UsuarioFacade();

  Future<List<CardMissaoDTO>> findListCardMissaoDTOByAlunoDTO() async {
    return domain.findListCardMissaoDTOByAlunoDTO(await usuarioFacade.getAlunoByUsuario(
      usuarioFacade.getUsuarioLogado()));
  }
}
