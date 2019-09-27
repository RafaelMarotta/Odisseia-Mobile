// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QuestaoDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestaoDTO _$QuestaoDTOFromJson(Map<String, dynamic> json) {
  return QuestaoDTO(
    id: json['id'] as int,
    enunciado: json['enunciado'] as String,
    alternativas: (json['alternativas'] as List)
        ?.map((e) => e == null
            ? null
            : AlternativaDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$QuestaoDTOToJson(QuestaoDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'enunciado': instance.enunciado,
      'alternativas': instance.alternativas,
    };
