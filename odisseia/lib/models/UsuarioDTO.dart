import 'package:json_annotation/json_annotation.dart';

part 'UsuarioDTO.g.dart';

@JsonSerializable()
class UsuarioDTO{
  int id;
  String nome;
  String login;
  String senha;
  int tipo;

  UsuarioDTO(this.login,this.senha);

  factory UsuarioDTO.fromJson(Map<String,dynamic> json) => _$UsuarioDTOFromJson(json);
  Map<String,dynamic> toJson() => _$UsuarioDTOToJson(this);
  }