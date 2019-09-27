import 'package:json_annotation/json_annotation.dart';
import 'package:odisseia/data/model/QuestaoDTO.dart';

part 'QuestaoPaginationDTO.g.dart';

@JsonSerializable()
class QuestaoPaginationDTO {
  bool hasNextPage;
  bool hasPreviousPage;
  List<QuestaoDTO> items;  

  QuestaoPaginationDTO({this.items,this.hasNextPage,this.hasPreviousPage});
  factory QuestaoPaginationDTO.fromJson(Map<String, dynamic> json) =>
      _$QuestaoPaginationDTOFromJson(json);
  Map<String, dynamic> toJson() => _$QuestaoPaginationDTOToJson(this);
}