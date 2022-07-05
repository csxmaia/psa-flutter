import 'package:flutter/material.dart';

class CalculadoraOp {
  double _numero = 12;
  double _resultado = 444;
  late String _operacao;

  CalculadoraOp();

  get resultado {
    return _resultado;
  }

  get numero {
    return _numero;
  }

  setOperacao(String operacao) {
    _operacao = operacao;
  }

  addNumero(int numero) {
    String numeroConcatenado = _numero.toString() + numero.toString();
    _numero = double.parse(numeroConcatenado);
  }

  realizarCalculo() {
    switch (_operacao) {
      case "+":
        _resultado = _resultado + _numero;
        break;
    }
  }
}

class Calculadora extends StatelessWidget {
  CalculadoraOp calculadoraOp = CalculadoraOp();

  Widget Botao(String label, BuildContext context, VoidCallback? acao) {
    return ElevatedButton(
      child: Text(label),
      onPressed: () => acao,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora'),
        ),
        body: Form(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(calculadoraOp.resultado.toString()),
                  Text(calculadoraOp.numero.toString()),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Botao("%", context, () => {}),
                  ),
                  Expanded(
                    child: Botao("v/", context, () => {}),
                  ),
                  Expanded(
                    child: Botao("x²", context, () => {}),
                  ),
                  Expanded(
                    child: Botao("1/x", context, () => {}),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Botao("CE", context, () => {}),
                  ),
                  Expanded(
                    child: Botao("C", context, () => {}),
                  ),
                  Expanded(
                    child: Botao("<x", context, () => {}),
                  ),
                  Expanded(
                    child: Botao("/", context, () => {}),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:
                        Botao("7", context, () => calculadoraOp.addNumero(7)),
                  ),
                  Expanded(
                    child:
                        Botao("8", context, () => calculadoraOp.addNumero(8)),
                  ),
                  Expanded(
                    child:
                        Botao("9", context, () => calculadoraOp.addNumero(9)),
                  ),
                  Expanded(
                    child: Botao("x", context, () => {}),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:
                        Botao("4", context, () => calculadoraOp.addNumero(4)),
                  ),
                  Expanded(
                    child:
                        Botao("5", context, () => calculadoraOp.addNumero(5)),
                  ),
                  Expanded(
                    child:
                        Botao("6", context, () => calculadoraOp.addNumero(6)),
                  ),
                  Expanded(
                    child: Botao("-", context, () => {}),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child:
                        Botao("1", context, () => calculadoraOp.addNumero(1)),
                  ),
                  Expanded(
                    child:
                        Botao("2", context, () => calculadoraOp.addNumero(2)),
                  ),
                  Expanded(
                    child:
                        Botao("3", context, () => calculadoraOp.addNumero(3)),
                  ),
                  Expanded(
                    child: Botao(
                        "+", context, () => calculadoraOp.setOperacao("+")),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Botao("+-", context, () => {}),
                  ),
                  Expanded(
                    child:
                        Botao("0", context, () => calculadoraOp.addNumero(0)),
                  ),
                  Expanded(
                    child: Botao(",", context, () => {}),
                  ),
                  Expanded(
                    child: Botao("=", context, () => {}),
                  ),
                ],
              ),
            ],
          ),
        ));
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
