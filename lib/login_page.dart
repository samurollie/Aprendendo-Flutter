import 'package:aprendendo_flutter/homePage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = '';
  String _password = '';

  Widget MyBody() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/368px-Google_2015_logo.svg.png',
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  _email = text;
                },
              ),
              Container(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  _password = text;
                },
              ),
              Container(height: 15),
              RaisedButton(
                onPressed: () {
                  if (_email == 'samuelbarbosa2001@gmail.com' &&
                      _password == '123') {
                    print('SENHA CORRETA');
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    print('SENHA ERRADA');
                  }
                },
                child: Text('Entrar'),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Stack é um widget semelhante ao row, list e column, porém neste a ordem dos widgets no array de children importa, já que eles ficam empilhados. Se colocassemos o container depois de MyBody(), ele ia ficar por cima e nao ia ser exibido nada.
        children: [
          Container(
            color: Colors.blueGrey,
          ),
          MyBody(),
        ],
      ),
    );
  }
}
