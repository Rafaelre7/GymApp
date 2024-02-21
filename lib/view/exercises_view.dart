import 'package:flutter/material.dart';
import 'package:gym_app/_commons/my_colors.dart';
import 'package:gym_app/models/exercises_model.dart';
import 'package:gym_app/models/sentimento_model.dart';

class ExercisesView extends StatelessWidget {
  ExercisesView({super.key});

  final ExercisesModel exercisesModel = ExercisesModel(
      id: "EX001",
      nome: "Remada Supinada",
      treino: "Treino A",
      comoFazer:
          "Segura com as duas mãos a barra, mantem a coluna reta, e puxa");

  final List<SentimentoModel> listaSentimentos = [
    SentimentoModel(
        id: "SE001", sentindo: "Pouca ativação", data: "2024-02-17"),
    SentimentoModel(
        id: "SE002", sentindo: "Já senti ativação ", data: "2024-02-18")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            Text(exercisesModel.nome, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            Text(exercisesModel.treino, style: const TextStyle(fontSize: 15),),
          ],
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(color: Colors.white),
        backgroundColor: MyColors.azulEscuro,
        elevation: 0,
        toolbarHeight: 72,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Fab foi cliado!");
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Enviar foto"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Tirar foto"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Como fazer?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(exercisesModel.comoFazer),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text(
              "Como estou me sentindo?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
                SentimentoModel sentimentoAgora = listaSentimentos[index];

                return ListTile(
                  dense: true,
                  //compactar quando tem muita informacao
                  contentPadding: EdgeInsets.zero,
                  title: Text(sentimentoAgora.sentindo),
                  subtitle: Text(sentimentoAgora.data),
                  leading: const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      print("DELETAR ${sentimentoAgora.sentindo}");
                    },
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
