// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CardMissaoDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardMissaoDTO _$CardMissaoDTOFromJson(Map<String, dynamic> json) {
  return CardMissaoDTO(
    json['titulo'] as String,
    json['descricao'] as String,
    json['dataEntrega'] == null
        ? null
        : DateTime.parse(json['dataEntrega'] as String),
  );
}

Map<String, dynamic> _$CardMissaoDTOToJson(CardMissaoDTO instance) =>
    <String, dynamic>{
      'titulo': instance.titulo,
      'descricao': instance.descricao,
      'dataEntrega': instance.dataEntrega?.toIso8601String(),
    };
