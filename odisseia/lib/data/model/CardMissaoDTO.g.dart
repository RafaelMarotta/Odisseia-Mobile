// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CardMissaoDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardMissaoDTO _$CardMissaoDTOFromJson(Map<String, dynamic> json) {
  return CardMissaoDTO(
    id: json['id'] as int,
    fkMissaoAluno: json['fkMissaoAluno'] as int,
    titulo: json['titulo'] as String,
    descricao: json['descricao'] as String,
    dataPrazo: json['dataPrazo'] as String,
  );
}

Map<String, dynamic> _$CardMissaoDTOToJson(CardMissaoDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fkMissaoAluno': instance.fkMissaoAluno,
      'titulo': instance.titulo,
      'descricao': instance.descricao,
      'dataPrazo': instance.dataPrazo,
    };
