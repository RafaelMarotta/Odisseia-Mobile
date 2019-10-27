// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MissaoResolucaoDTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MissaoResolucaoDTO _$MissaoResolucaoDTOFromJson(Map<String, dynamic> json) {
  return MissaoResolucaoDTO(
    fkMissaoAluno: json['fkMissaoAluno'] as int,
    fkQuestao: json['fkQuestao'] as int,
    fkAlternativa: json['fkAlternativa'] as int,
    tempoGasto: json['tempoGasto'] as int,
  );
}

Map<String, dynamic> _$MissaoResolucaoDTOToJson(MissaoResolucaoDTO instance) =>
    <String, dynamic>{
      'fkMissaoAluno': instance.fkMissaoAluno,
      'fkQuestao': instance.fkQuestao,
      'fkAlternativa': instance.fkAlternativa,
      'tempoGasto': instance.tempoGasto,
    };
