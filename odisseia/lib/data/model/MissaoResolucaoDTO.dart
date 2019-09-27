import 'package:json_annotation/json_annotation.dart';

part 'MissaoResolucaoDTO.g.dart';

@JsonSerializable()
class MissaoResolucaoDTO{
    int id;
    int fkMissaoAluno;
    int fkQuestao;
    int fkAlternativa;
  MissaoResolucaoDTO({this.id,this.fkMissaoAluno,this.fkQuestao,this.fkAlternativa});

  factory MissaoResolucaoDTO.fromJson(Map<String,dynamic> json) => _$MissaoResolucaoDTOFromJson(json);
  Map<String,dynamic> toJson() => _$MissaoResolucaoDTOToJson(this);
}