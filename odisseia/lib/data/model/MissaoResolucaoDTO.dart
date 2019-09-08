import 'package:json_annotation/json_annotation.dart';

part 'MissaoResolucaoDTO.g.dart';

@JsonSerializable()
class MissaoResolucaoDTO{
  int fkMissao;
  Map<int, int> questaoAlternativa = Map();
  MissaoResolucaoDTO({this.fkMissao, this.questaoAlternativa});

  factory MissaoResolucaoDTO.fromJson(Map<String,dynamic> json) => _$MissaoResolucaoDTOFromJson(json);
  Map<String,dynamic> toJson() => _$MissaoResolucaoDTOToJson(this);
}