import 'package:flutter/widgets.dart';

class ImcBloc{
  final alturaController = TextEditingController();
  final pesoController = TextEditingController();
  var resultado = 'Preencha os dados para calcular o IMC';

  void calcular() {
    final peso = double.tryParse(pesoController.text.replaceAll(',', '.')) ?? 0;
    final altura = (double.tryParse(alturaController.text.replaceAll(',', '.')) ?? 0) / 100;

    if (peso <= 0 || altura <= 0) {
      resultado = 'Campos inválidos!';
      return;
    }

    final imc = peso / (altura * altura);

    if (imc < 18.6) {
      resultado = 'Abaixo do peso';
    }
    else if (imc < 24.9) {
      resultado = 'Peso ideal';
    }
    else if (imc < 29.9) {
      resultado = 'Levemente acima do peso';
    }
    else if (imc < 34.9) {
      resultado = 'Obesidade Grau I';
    }
    else if (imc < 39.9) {
      resultado = 'Obesidade Grau II';
    }
    else {
      resultado = 'Obesidade Grau III';
    }
  }
}