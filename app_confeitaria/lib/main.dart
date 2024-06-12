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
      image: 'img/Brigadeiria.jpg',
      details: 'A Brigadeiria, situada no coração de São Paulo, é um oásis culinário para os amantes de doces. Seu ambiente encantador combina o charme retrô com toques modernos, criando uma atmosfera acolhedora e convidativa. Os aromas sedutores de chocolate e confeitos frescos preenchem o ar, enquanto os clientes se deliciam com uma variedade de brigadeiros, desde os clássicos até os mais criativos e inovadores. Cada mordida é uma explosão de sabor, uma homenagem à tradicional iguaria brasileira que conquista paladares e corações.',
    ),
    Confeitaria(
      name: 'Dona Nuvem',
      description: 'A melhor confeitaria temática de SP.',
      image: 'img/donaNuvem.jfif',
      details: 'A Confeitaria Dona Nuvem, localizada em São Paulo, encanta seus visitantes com uma temática lúdica e mágica, inspirada em nuvens e sonhos. Conhecida por suas sobremesas inovadoras, como sorvetes servidos em cones de algodão doce que se assemelham a nuvens, além de uma variedade de bolos, cupcakes e bebidas criativas, a Dona Nuvem oferece uma experiência gastronômica única. O ambiente acolhedor e instagramável, combinado com a alta qualidade dos ingredientes, faz da visita à Dona Nuvem um passeio imperdível para quem busca doces deliciosos e visuais encantadores.',
    ),
    Confeitaria(
      name: 'Dona doçeria',
      description: 'Especializada em doces finos e temáticos.',
      image: 'img/donaDoceria.jpg',
      details: 'A Dona Doceria, um refúgio doçura no coração de São Paulo, é um convite irresistível aos amantes da boa confeitaria. Com um ambiente acolhedor e encantador, esta confeitaria combina o charme vintage com toques contemporâneos, criando uma atmosfera única de conforto e elegância. Os aromas sedutores de bolos frescos, cupcakes decorados e biscoitos recém-assados enchem o ar, enquanto os clientes se deliciam com uma variedade de doces finos e sobremesas artesanais feitas com os melhores ingredientes. Cada visita à Dona Doceria é uma experiência gastronômica memorável, onde cada sabor é uma celebração à arte da confeitaria.',
    ),
    Confeitaria(
      name: 'Pikerruchas',
      description: 'Uma vila inteira de delícias doces.',
      image: 'img/Pikurruchas.jpg',
      details: 'A Pikerruchas, localizada em São Paulo, é um verdadeiro paraíso para os apaixonados por doces. Com uma atmosfera vibrante e acolhedora, esta confeitaria cativa seus clientes com uma variedade irresistível de guloseimas artesanais e criativas. Desde os clássicos brigadeiros até os bolos mais elaborados e os cupcakes decorados com perfeição, cada doce é uma obra-prima culinária que combina sabor excepcional com uma apresentação impecável. Os aromas tentadores que pairam no ar são um convite irresistível para explorar e saborear as delícias únicas da Pikerruchas, onde cada mordida é uma experiência inesquecível.',
    ),
     Confeitaria(
      name: 'O Tradicionalissimo',
      description: 'Uma vila inteira de delícias doces.',
      image: 'img/Tradicionalissimo.png',
      details: 'Localizada em São Paulo, a Confeitaria O Tradicionalíssimo é uma parada obrigatória para os aficionados por donuts. Em seu ambiente acolhedor e charmoso, os clientes são recebidos pelo aroma irresistível de donuts frescos, que saem do forno diariamente. Cada pedaço é uma experiência de sabor única, combinando a tradição dos sabores clássicos com a inovação de criações exclusivas. Na Confeitaria O Tradicionalíssimo, os donuts são mais do que um doce, são uma verdadeira celebração da paixão pela confeitaria artesanal.',
    ),
    // Adicione mais confeitarias aqui
  ];

final List<String> buttonsImages = [
     'img/Brigadeiria1.png',
     'img/donaNuvem1.jfif',
     'img/donaDoceria1.jfif',
     'img/Pikurruchas1.jfif',
    'img/tradicionalissimo1.jfif',
    // Adicione mais imagens de botões aqui, se necessário
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
              leading: Image.asset(buttonsImages[index]), // Usando as imagens dos botões
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
