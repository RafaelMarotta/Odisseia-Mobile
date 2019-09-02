import 'package:json_annotation/json_annotation.dart';

part 'CardMissaoDTO.g.dart';

@JsonSerializable()
class CardMissaoDTO{
  String titulo;
  String descricao;
  DateTime dataEntrega;

  CardMissaoDTO(this.titulo,this.descricao,this.dataEntrega);
  factory CardMissaoDTO.fromJson(Map<String,dynamic> json) => _$CardMissaoDTOFromJson(json);
  Map<String,dynamic> toJson() => _$CardMissaoDTOToJson(this);
}