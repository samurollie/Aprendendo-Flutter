import 'package:flutter/cupertino.dart';

class AppControler extends ChangeNotifier {
  // AppControler é uma classe que estamos criando para um widget poder alterar o outro. Para fazer isso, deve ser uma extensão da classe ChangeNotifier, que é uma das formas que o flutter disponibiliza pra gerenciamento de Estados em uma aplicação.
  static AppControler instance =
      AppControler(); // Como eu quero que os valores dessa classe sejam o mesmo nos dois widgets que irei mexer, estou criando uma instancia estática deste objeto. (Se você não lembra, variáveis estáticas na orientação a objetos possuem o mesmo valor para todos os objetos daquela classe)

  bool isDarkTheme =
      false; // A variável isDarkTheme é a responsável por salvar se o app está no modo escuro ou não.

  void changeTheme() {
    // A função ChangeTheme foi criada com o propósito de ser chamada toda vez que eu quero mudar o tema.
    isDarkTheme = (isDarkTheme) ? false : true; // Mudo o valor de isdarktheme
    notifyListeners(); // Notifico aos widgets que estão me escutando que houve uma mudança.
  }
  /**
   * Basicamente, o que está ocorrendo é:
   * 1 - O Switch em homePage inicia como falso (Modo claro)
   * 2 - Ao apertál-lo, eu chamo a função changetheme, que muda isDarkTheme para verdadeiro (Modo escuro). Alterando assim o valor do Switch e deixando ele do outro lado.
   * 3 - Ao alterar o valor de isDarkTheme, o campo brightness em AppWidget para false, deixando assim o app no modo escuro.
  */
}
