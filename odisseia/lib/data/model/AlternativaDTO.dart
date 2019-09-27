import 'package:json_annotation/json_annotation.dart';

part 'AlternativaDTO.g.dart';

@JsonSerializable()
class AlternativaDTO {
  int id;
  String texto;

  AlternativaDTO({this.id, this.texto});
  factory AlternativaDTO.fromJson(Map<String, dynamic> json) =>
      _$AlternativaDTOFromJson(json);
  Map<String, dynamic> toJson() => _$AlternativaDTOToJson(this);
}