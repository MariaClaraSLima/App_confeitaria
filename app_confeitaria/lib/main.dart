import 'package:flutter/material.dart';
import 'teladois.dart';
import 'classe_confeitarias.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Confeitarias Temáticas SP',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
      routes: {
        '/details': (context) => DetailsPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Confeitaria> confeitarias = [
      Confeitaria(
      name: 'Brigadeiria',
      description: 'Uma vila inteira de delícias doces.',
      image: 'assets/images/confeitaria3.jpg',
      details: 'Um lugar mágico com uma variedade de doces que encantam os olhos e o paladar.',
    ),
    Confeitaria(
      name: 'Dona Nuvem',
      description: 'A melhor confeitaria temática de SP.',
      image: 'assets/images/confeitaria1.jpg',
      details: 'A Confeitaria Dona Nuvem, localizada em São Paulo, encanta seus visitantes com uma temática lúdica e mágica, inspirada em nuvens e sonhos. Conhecida por suas sobremesas inovadoras, como sorvetes servidos em cones de algodão doce que se assemelham a nuvens, além de uma variedade de bolos, cupcakes e bebidas criativas, a Dona Nuvem oferece uma experiência gastronômica única. O ambiente acolhedor e instagramável, combinado com a alta qualidade dos ingredientes, faz da visita à Dona Nuvem um passeio imperdível para quem busca doces deliciosos e visuais encantadores.',
    ),
    Confeitaria(
      name: 'Dona doçeria',
      description: 'Especializada em doces finos e temáticos.',
      image: 'assets/images/confeitaria2.jpg',
      details: 'Conhecida por seus bolos temáticos e doces finos de alta qualidade.',
    ),
    Confeitaria(
      name: 'Pikerruchas',
      description: 'Uma vila inteira de delícias doces.',
      image: 'assets/images/confeitaria3.jpg',
      details: 'Um lugar mágico com uma variedade de doces que encantam os olhos e o paladar.',
    ),
     Confeitaria(
      name: 'O Tradicionalissimo',
      description: 'Uma vila inteira de delícias doces.',
      image: 'assets/images/confeitaria3.jpg',
      details: 'Um lugar mágico com uma variedade de doces que encantam os olhos e o paladar.',
    ),
    // Adicione mais confeitarias aqui
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confeitarias Temáticas SP'),
      ),
      body: ListView.builder(
        itemCount: confeitarias.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(confeitarias[index].image),
              title: Text(confeitarias[index].name),
              subtitle: Text(confeitarias[index].description),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: confeitarias[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
