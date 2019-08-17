import 'package:json_annotation/json_annotation.dart';

part 'UsuarioLoginDTO.g.dart';

@JsonSerializable()
class UsuarioLoginDTO {
  String login;
  String senha;

  UsuarioLoginDTO(this.login,this.senha);

  factory UsuarioLoginDTO.fromJson(Map<String,dynamic> json) => _$UsuarioLoginDTOFromJson(json);
  Map<String,dynamic> toJson() => _$UsuarioLoginDTOToJson(this);
}