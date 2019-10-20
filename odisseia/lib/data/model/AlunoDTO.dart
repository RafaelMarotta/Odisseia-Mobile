import 'package:json_annotation/json_annotation.dart';

import 'UsuarioLoginDTO.dart';

part 'AlunoDTO.g.dart';

@JsonSerializable()
class AlunoDTO {
  int id;
  String nome;
  String login;
  String senha;
  int tipo;
  bool excluido;

  AlunoDTO({this.id, this.excluido});
  factory AlunoDTO.fromJson(Map<String, dynamic> json) =>
      _$AlunoDTOFromJson(json);
  Map<String, dynamic> toJson() => _$AlunoDTOToJson(this);
}

abstract class IAlunoRepository {
  Future<bool> login(UsuarioLoginDTO usuarioLoginDTO);
}
