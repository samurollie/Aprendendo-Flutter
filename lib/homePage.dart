import 'package:flutter/material.dart';

import 'AppController.dart';

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
    return Scaffold(
      // Scaffold é um tipo de Widget que possui todas as regras de estilo do Material Design, do android
      appBar: AppBar(
        // AppBar é uma propriedade do Scaffold que implementa automaticamente a barra superior do app
        title: Center(
          child: Text('Bem Vindo!'),
        ),
        actions: [
          CustomSwitch(),
          Icon(Icons.search),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  'https://avatars2.githubusercontent.com/u/53665491?s=460&u=5db3bedb8d53b15d5557ad16ee1c766165f4334d&v=4',
                ),
              ),
              accountName: Text('Samuel'),
              accountEmail: Text('samuelbarbosa2001@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              subtitle: Text('Tela inicial'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Tela de Login'),
              subtitle: Text('Sair'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contador: $count',
              style: TextStyle(fontSize: 25),
            ),
            CustomSwitch(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  color: Colors.red,
                ),
                Container(
                  width: 64,
                  height: 64,
                  color: Colors.green,
                ),
                Container(
                  width: 64,
                  height: 64,
                  color: Colors.blue,
                ),
              ],
            )
          ],
        ),
      ),

      /* Center(
        child: CustomSwitch(),
      ) */

      /* body: Center(
        // Body tem tudo que estará no "corpo da página"
        // Centraliza o que estiver dentro dele
        child: GestureDetector(
          // O widget GestureDetector é um widget que detecta gestos
          child: Text(
            'Samuel Contador: $count',
            style: TextStyle(
              fontSize: 25,
            ),
          ), // O texto
          onTap: () {
            // OnTap é um atributo do widget GestureDetector, tudo que está dentro dele será executado toda vez q alguem tocar no widget
            setState(() {
              // Função que notifica ao Flutter que ele deve atualizar o estado do widget, é recomendável colocar dentro desta função, apenas o que vai acontecer pra atualizar efetivamente o estado do widget
              count++; // Aumenta o contador
            });
          },
        ), 
      ),*/

      floatingActionButton: FloatingActionButton(
        // FloatingAction Button implementa um botão flutuante (tipo o de postar status no whatsapp)
        child:
            Icon(Icons.add), // Estou usando um icone pra ficar dentro do botão
        onPressed: () {
          // Função que determina o que vai acontecer quando apertarmos o botão flutuante, neste caso, estamos fazendo o mesmo do Gesture detector
          setState(() {
            // Função que notifica ao Flutter que ele deve atualizar o estado do widget, é recomendável colocar dentro desta função, apenas o que vai acontecer pra atualizar efetivamente o estado do widget
            count++; // Aumenta o contador
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      // Switch é um widget que adiciona uma alavanca, requer dois valores: Value e OnChanged. Nesse caso, está sendo usado para se referir se o app deve ficar no modo escuro ou não.
      value: AppControler.instance.isDarkTheme,
      // On changed é o booleano que indica o valor inicial, neste caso eu estou passando o que está na classe AppControler
      onChanged: (value) {
        //On changed indica o que deve acontecer quando o valor mudar.
        AppControler.instance.changeTheme(); // Neste caso, vai mudar o tema.
      },
    );
  }
}
