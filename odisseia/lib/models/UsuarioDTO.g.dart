// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UsuarioDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsuarioDTO _$UsuarioDTOFromJson(Map<String, dynamic> json) {
  return UsuarioDTO(
    json['id'] as int,
    json['login'] as String,
    json['senha'] as String,
    json['tipo'] as int,
    alunoId: json['alunoId'] as int,
    professorId: json['professorId'] as int,
  )..nome = json['nome'] as String;
}

Map<String, dynamic> _$UsuarioDTOToJson(UsuarioDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'alunoId': instance.alunoId,
      'professorId': instance.professorId,
      'nome': instance.nome,
      'login': instance.login,
      'senha': instance.senha,
      'tipo': instance.tipo,
    };
