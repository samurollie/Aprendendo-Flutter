import 'package:aprendendo_flutter/AppController.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      // Animated Builder é um widget para formar animações. No nosso caso, a animação será a transição do claro pro escuro
      animation: AppControler.instance,
      builder: (context, child) {
        return MaterialApp(
          // O Material App é um widget tipo o Container, porém ele já possui todo o design material, que é o padrão do Google;
          theme: ThemeData(
            // Theme é a propriedade do Material app onde eu digo como vai ser o tem o tema do meu app estou passando como valor um widget contendo todas as informações de estilo, nesse caso ThemeData
            primarySwatch: Colors.blue,
            // PrimarySwatch diz basicamente qual será a cor dominante do meu aplicativo, dessa forma coisas como barra superior e botões já terão automaticamente esse cor. Estou passando como valor um objeto, Colors.blue
            brightness: (AppControler.instance.isDarkTheme)
                ? Brightness.dark
                : Brightness.light,
            // brightness é o campo que diz se o app vai estar no modo escuro ou claro. O que estamos fazendo aq é: Se o valor da minha instancia de isDarkTheme for verdadeiro, modo escuro. Caso contrário, modo claro.
          ),
          home: HomePage(),
          // Home é o atributo do material app que diz que trata como vai ser a página em si do App. Estou passando como valor HomePage() (veja abaixo)
          debugShowCheckedModeBanner: false,
          //Esconde a barrinha vermelha com "DEBUG"
        );
      },
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
