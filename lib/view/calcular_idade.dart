import 'package:flutter/material.dart';

class CalcularIdade extends StatelessWidget {
  String? nome;
  int? anoNascimento;

  Dialog(String mensagem, BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text(mensagem),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calcular Idade'),
        ),
        body: Form(
          child: Column(
            children: [
              TextField(
                onChanged: (value) => nome = value,
                decoration: const InputDecoration(
                    label: Text('Nome'),
                    hintText: 'Voce deve informar o seu nome'),
              ),
              TextField(
                onChanged: (value) => anoNascimento = int.parse(value),
                decoration: const InputDecoration(
                    label: Text('Ano de nascimento'),
                    hintText:
                        'Voce deve informar o seu nome ano de nascimento'),
              ),
              ElevatedButton(
                  child: const Text('Ok'),
                  onPressed: () => handleCheckPressCalculoIdade()
                      ? Dialog(
                          "$nome, sua idade é ${calcularIdade(anoNascimento!).toString()}",
                          context)
                      : null)
            ],
          ),
        ));
  }

  int calcularIdade(int anoNascimento) {
    int anoAtual = DateTime.now().year;
    int idade = anoAtual - anoNascimento;
    return idade;
  }

  bool handleCheckPressCalculoIdade() {
    if (!isNull(anoNascimento) &&
        !isNull(nome) &&
        !isEmpty(anoNascimento.toString()) &&
        !isEmpty(nome!)) {
      return true;
    }
    return false;
  }

  bool isEmpty(String value) {
    if (value.trim() == "") {
      return true;
    }
    return false;
  }

  bool isNull(value) {
    if (value == null) {
      return true;
    }
    return false;
  }
}
