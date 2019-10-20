// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AlunoDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlunoDTO _$AlunoDTOFromJson(Map<String, dynamic> json) {
  return AlunoDTO(
    id: json['id'] as int,
    excluido: json['excluido'] as bool,
  )
    ..nome = json['nome'] as String
    ..login = json['login'] as String
    ..senha = json['senha'] as String
    ..tipo = json['tipo'] as int;
}

Map<String, dynamic> _$AlunoDTOToJson(AlunoDTO instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'login': instance.login,
      'senha': instance.senha,
      'tipo': instance.tipo,
      'excluido': instance.excluido,
    };
