class ExercisesModel {
  String id;
  String nome;
  String treino;
  String comoFazer;

  String? urlImagem;

  ExercisesModel(
      {required this.id,
      required this.nome,
      required this.treino,
      required this.comoFazer});

  //Pegar informacoes do banco de dados
  ExercisesModel.fromMap(Map<String, dynamic> map)
      : id = map["id"],
        nome = map["nome"],
        treino = map["treino"],
        comoFazer = map["comoFazer"],
        urlImagem = map["urlImagem"];

  //Eviar informacoes do banco de dados
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "comoFazer": comoFazer,
      "urlImagem": urlImagem,
    };
  }
}
