import 'package:flutter/material.dart';

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
