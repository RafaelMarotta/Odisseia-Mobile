import 'package:json_annotation/json_annotation.dart';

part 'MissaoResolucaoDTO.g.dart';

@JsonSerializable()
class MissaoResolucaoDTO{
    int fkMissaoAluno;
    int fkQuestao;
    int fkAlternativa;
  MissaoResolucaoDTO({this.fkMissaoAluno,this.fkQuestao,this.fkAlternativa});
  
    static build(MissaoResolucaoDTO dto) => 
    MissaoResolucaoDTO(fkMissaoAluno: dto.fkMissaoAluno, fkQuestao: dto.fkQuestao,fkAlternativa: dto.fkAlternativa);
 
  factory MissaoResolucaoDTO.fromJson(Map<String,dynamic> json) => _$MissaoResolucaoDTOFromJson(json);
  Map<String,dynamic> toJson() => _$MissaoResolucaoDTOToJson(this);
}

abstract class IMissaoResolutionRepository{
  Future<bool> salvarMissaoResolucao(List<MissaoResolucaoDTO> resolucao);
}