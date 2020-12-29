import 'package:flutter/cupertino.dart'; // Biblioteca necessária para utilizar o Flutter
import 'package:flutter/material.dart'; // Biblioteca necessária para utilizar o Flutter

main() {
  // Função principal, do dart.
  /* runApp(AppWidget(
    title: 'Barbosa',
  )); // Função do Flutter para rodar o app */

  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // O Material App é um widget tipo o Container, porém ele já possui todo o design material, que é o padrão do Google;
      theme: ThemeData(
        // Theme é a propriedade do Material app onde eu digo como vai ser o tem o tema do meu app estou passando como valor um widget contendo todas as informações de estilo, nesse caso ThemeData
        primarySwatch: Colors.blue,
        // PrimarySwatch diz basicamente qual será a cor dominante do meu aplicativo, dessa forma coisas como barra superior e botões já terão automaticamente esse cor. Estou passando como valor um objeto, Colors.blue
      ),
      home:
          HomePage(), // Home é o atributo do material app que diz que trata como vai ser a página em si do App. Estou passando como valor HomePage() (veja abaixo)
    );
  }
}

class HomePage extends StatefulWidget {
  // StateFul Widget
  @override
  _HomePageState createState() =>
      _HomePageState(); // Como em um stateful widget ele pode ser atualizado, ele retorna o estado daquele widget.
}

class _HomePageState extends State<HomePage> {
  // Configuração da homePage em si
  int count = 0; // Contador

  @override
  Widget build(BuildContext context) {
    return Container(
      //Estou retornando um container, um widget básico
      child: Center(
        // Centraliza o que estiver dentro dele
        child: GestureDetector(
          // O widget GestureDetector é um widget que detecta gestos
          child: Text('Samuel Contador: $count'), // O texto
          onTap: () {
            // OnTap é um atributo do widget GestureDetector, tudo que está dentro dele será executado toda vez q alguem tocar no widget
            print('clicado'); //Imprime clicado no terminal (DART)
            setState(() {
              // Função que notifica ao Flutter que ele deve atualizar o estado do widget, é recomendável colocar dentro desta função, apenas o que vai acontecer pra atualizar efetivamente o estado do widget
              count++; // Aumenta o contador
            });
            print('count: $count'); // Imprime o contador no terminal
          },
        ),
      ),
    );
  }
}

/* 
class AppWidget extends StatelessWidget {
  // Widget com a tela inicial do app

  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Construtor da tela
    return Container(
      // Retorna a tela, nesse caso, estou utilizando um container, que é um widget genérico
      child: Center(
        // Cada widget recebe um child, o widget "Center" serve para dizer que o que está dentro dele estará centralizado, só está sendo necessário por que estamos utilizando um Container, se utilizássemos um MaterialApp, por exemplo, não precisaríamos disto pois ele já alinharia o texto.
        child: Text(
          // O texto em um widget também é um widget
          'Samuel $title', // O texto em si
          textDirection: TextDirection
              .ltr, // Estou dizendo que o texto será da esquerda para a direita
          style: TextStyle(
            // O estilo do texto (equivalente ao CSS) também é um widget
            color: Colors.white, // Cor do texto
            fontSize: 50.0, // Tamanho do texto
          ),
        ),
      ),
    );
  } 
}*/
