import 'package:json_annotation/json_annotation.dart';

part 'AlunoDTO.g.dart';

@JsonSerializable()
class AlunoDTO {
  int id;
  bool excluido;

  AlunoDTO({this.id, this.excluido});
  factory AlunoDTO.fromJson(Map<String, dynamic> json) =>
      _$AlunoDTOFromJson(json);
  Map<String, dynamic> toJson() => _$AlunoDTOToJson(this);
}

abstract class IAlunoRepository {
  Future<AlunoDTO> feetchAlunoByUsuarioLogado();
}
