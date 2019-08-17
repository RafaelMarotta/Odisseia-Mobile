// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'UsuarioLoginDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsuarioLoginDTO _$UsuarioLoginDTOFromJson(Map<String, dynamic> json) {
  return UsuarioLoginDTO(
    json['login'] as String,
    json['senha'] as String,
  );
}

Map<String, dynamic> _$UsuarioLoginDTOToJson(UsuarioLoginDTO instance) =>
    <String, dynamic>{
      'login': instance.login,
      'senha': instance.senha,
    };
