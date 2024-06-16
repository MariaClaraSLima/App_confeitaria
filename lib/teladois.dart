import 'package:flutter/material.dart';
import 'classe_confeitarias.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Confeitaria? confeitaria =
        ModalRoute.of(context)!.settings.arguments as Confeitaria?;

    return Scaffold(
      appBar: AppBar(
        title: Text(confeitaria?.name ?? 'Detalhes'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 240, 196, 211), const Color.fromARGB(255, 238, 161, 187)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            margin: EdgeInsets.all(16.0), // Define a margem ao redor do Container
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 150, // Altura para todas as imagens
                  child: Image.asset(
                    confeitaria?.image ?? 'assets/images/default.jpg',
                    fit: BoxFit.cover, // Ajusta a imagem dentro do SizedBox
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  confeitaria?.name ?? '',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  confeitaria?.details ?? '',
                  style: TextStyle(fontSize: 16, height: 1.5), // Aumenta o espaçamento entre linhas
                  textAlign: TextAlign.justify, // Justifica o texto
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
