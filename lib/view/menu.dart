import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  var primeiroBotao = ElevatedButton(
    child: Text('Primeiro Botao'),
    onPressed: () {},
  );

  Widget criarBotao(String rotulo, VoidCallback? acao) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: acao,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            criarBotao(
                'Contador', () => Navigator.pushNamed(context, '/contador')),
            criarBotao('Hello World',
                () => Navigator.pushNamed(context, '/hello-world')),
            criarBotao('Calcular Idade',
                () => Navigator.pushNamed(context, '/calcular-idade')),
            criarBotao('Calculadora',
                () => Navigator.pushNamed(context, '/calculadora')),
          ],
        ),
      ),
    );
  }
}
