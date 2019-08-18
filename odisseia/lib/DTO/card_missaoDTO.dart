class CardMissaoDTO {
  
  String titulo;
  String descricao;
  DateTime dataEntrega;

  CardMissaoDTO(){
    this.titulo = "test";
    this.descricao = "test descrição";
    this.dataEntrega = DateTime.parse("1969-07-20 20:18:04Z");
  }

}