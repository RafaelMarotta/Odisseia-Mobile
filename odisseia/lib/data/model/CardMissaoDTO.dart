import 'package:json_annotation/json_annotation.dart';

part 'CardMissaoDTO.g.dart';

@JsonSerializable()
class CardMissaoDTO{
  int id;
  int fkMissaoAluno;
  String titulo;
  String descricao;
  String dataPrazo;
  

  CardMissaoDTO({this.id,this.fkMissaoAluno,this.titulo,this.descricao,this.dataPrazo});
  factory CardMissaoDTO.fromJson(Map<String,dynamic> json) => _$CardMissaoDTOFromJson(json);
  Map<String,dynamic> toJson() => _$CardMissaoDTOToJson(this);
}

abstract class ICardMissaoRepository{
  Future<List<CardMissaoDTO>> fetchListCardMissaoDTO();
}