// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UsuarioDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsuarioDTO _$UsuarioDTOFromJson(Map<String, dynamic> json) {
  return UsuarioDTO(
    json['login'] as String,
    json['senha'] as String,
  )
    ..id = json['id'] as int
    ..nome = json['nome'] as String
    ..tipo = json['tipo'] as int;
}

Map<String, dynamic> _$UsuarioDTOToJson(UsuarioDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'login': instance.login,
      'senha': instance.senha,
      'tipo': instance.tipo,
    };
