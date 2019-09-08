import 'package:json_annotation/json_annotation.dart';
import 'package:odisseia/data/model/UsuarioLoginDTO.dart';

part 'UsuarioDTO.g.dart';

@JsonSerializable()
class UsuarioDTO {
  int id;
  int alunoId;
  int professorId;
  String nome;
  String login;
  String senha;
  int tipo;

  UsuarioDTO(
      {this.id,
      this.login,
      this.senha,
      this.tipo,
      this.alunoId,
      this.professorId});

  factory UsuarioDTO.fromJson(Map<String, dynamic> json) =>
      _$UsuarioDTOFromJson(json);
  Map<String, dynamic> toJson() => _$UsuarioDTOToJson(this);
}

abstract class IUsuarioRepository {
  Future<bool> login(UsuarioLoginDTO usuarioLoginDTO);
}
