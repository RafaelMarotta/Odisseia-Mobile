import 'package:json_annotation/json_annotation.dart';
import 'package:odisseia/data/model/AlternativaDTO.dart';
import 'package:odisseia/data/model/QuestaoPaginationDTO.dart';

part 'QuestaoDTO.g.dart';

@JsonSerializable()
class QuestaoDTO {
  int id;
  String enunciado;
  List<AlternativaDTO> alternativas;

  QuestaoDTO({this.id, this.enunciado,this.alternativas});
  factory QuestaoDTO.fromJson(Map<String, dynamic> json) =>
      _$QuestaoDTOFromJson(json);
  Map<String, dynamic> toJson() => _$QuestaoDTOToJson(this);
}

abstract class IQuestaoRepository{
  Future<QuestaoPaginationDTO> fetchQuestaoPaginationDTO(int missaoId,int ordem);
}