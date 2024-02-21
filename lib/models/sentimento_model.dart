class SentimentoModel {
  String id;
  String sentindo;
  String data;

  SentimentoModel(
      {required this.id, required this.sentindo, required this.data});

  //Pegar informacoes do banco de dados
  SentimentoModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        sentindo = map["sentindo"],
        data = map["data"];

  //Eviar informacoes do banco de dados
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "sentindo": sentindo,
      "data": data,
    };
  }
}
