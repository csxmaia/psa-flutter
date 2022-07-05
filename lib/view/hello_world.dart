import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  String? nome;

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
          title: const Text('Hello World'),
        ),
        body: Form(
          child: Column(
            children: [
              TextField(
                onChanged: (value) => nome = value,
                decoration: const InputDecoration(
                    label: Text('Ooi'), hintText: 'Digite o seu nome completo'),
              ),
              ElevatedButton(
                child: const Text('Ok'),
                onPressed: () => Dialog("123", context),
              )
            ],
          ),
        ));
  }
}
