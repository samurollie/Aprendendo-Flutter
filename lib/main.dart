import 'package:flutter/cupertino.dart'; // Biblioteca necessária para utilizar o Flutter
import 'package:flutter/material.dart'; // Biblioteca necessária para utilizar o Flutter

main() {
  // Função principal, do dart.
  runApp(AppWidget(
    title: 'Barbosa',
  )); // Função do Flutter para rodar o app
}

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
}
