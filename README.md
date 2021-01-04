# Aprendendo Flutter

# O Flutter

O Flutter é um framework desenvolvido pelo Google que é usado principalmente para desenvolvimento mobile. Ele utiliza o **Dart (incluir link pro outro repositório)**, linguangem orienteda a objetos também criada pelo Google em 2011 que o principal propósito era ser uma alternativa ao JavaScript (e não deu muito certo).

# Apps em Flutter

Diferente de outros Frameworks, como o Ionic, o Flutter utiliza apenas o Dart, sem necessidade de ficar mexendo com JavaScript, CSS e HTML em um mesmo projeto. Os arquivos pertinentes ao projeto ficam na pasta "lib".

Uma tela no Flutter é composta pelo o que são chamados de "Widgets", que são os componentes de uma tela. Tudo na tela é um Widget, desde um botão de pesquisa a um texto no título de uma tela. A partir disso, o Flutter divide os widgets em dois tipos: Stateless Widgets e Stateful Widget.

## Tipos de Widgets

Ao criar uma página podemos utilizar Stateful Widgets (Widgets com Estado) e Stateless Widgets (Widgets sem estado).

### Stateless Wigdet

Stateless widgets são uma forma mais simples de widget, são utilizadas para coisas estáticas, que não irão ser atualizadas em uma página, como por exemplo o título. Isso ocorre por que um Stateless Widget não possui a capacidade de salvar o seu atual estado. Logo, se sairmos do aplicativo todo seu estado será perdido

### Statefull Widget

Statefull Widgets são utilizados para coisas em uma página que serão atualizadas, como por exemplo um texto que mostre qual a sua distancia ate um certo ponto. Isso ocorre pois o Statefull Widget pode salvar o seu estado, e mesmo atualizando a tela ele pode continua como se nada tivesse acontecido.

## Funcionamento dos widgets

Os widgets no Flutter respeitam um sistema de hierarquia, onde um widget pode ficar dentro de outro, que fica dentro que outro, que fica dentro de outro...

Com isso, um widget que for filho (dentro de outro widget) irá herdar por padrão as propriedades do seu pai a não ser que seja configurado o contrário. Por exemplo, se um widget tiver um texto azul, os seus filhos também terão um texto azul até que se diga o contrário.


## Single Render X Multi Render

Muitas vezes ao programar no Flutter, coisas "estranhas" podem acontecer. De repente, um objeto pode ficar num tamanho diferente do que era necessário e etc. Neste caso, entra aí o conceito de Single Render e Multi Render.

Por exemplo, Se você criar um container preto de tamanho X e dentro dele tiver um child um outro container verde de tamanho Y (com Y < X). Ao rodar no aplicativo, o que você verá será apenas um container verde com tamanho X! Isso acontece por que os containers são redenrizados juntos, com o mesmo single render e é da natureza do container ocupar o tamanho do pai. Para evitar isso, podemos usar Widgets que tiverem um render próprio, como o Center. Desta forma, os dois containers serão tratados de forma diferente e o container preto terá o tamanho X e o container verde, o tamanho Y.

## Widgets Úteis

### Container

Container são widgets genéricos. Tentam por padrão seguir o alinhamento, tamanho e etc do widget filho. Se não tiver nenhum filho, ou essas propriedades estiverem faltando, o container irá ser redenrizado no widget pai com o menor tamanho possível.