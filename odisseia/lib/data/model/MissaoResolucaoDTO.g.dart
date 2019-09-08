// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MissaoResolucaoDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MissaoResolucaoDTO _$MissaoResolucaoDTOFromJson(Map<String, dynamic> json) {
  return MissaoResolucaoDTO(
    fkMissao: json['fkMissao'] as int,
    questaoAlternativa:
        (json['questaoAlternativa'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$MissaoResolucaoDTOToJson(MissaoResolucaoDTO instance) =>
    <String, dynamic>{
      'fkMissao': instance.fkMissao,
      'questaoAlternativa':
          instance.questaoAlternativa?.map((k, e) => MapEntry(k.toString(), e)),
    };
