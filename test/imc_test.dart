import 'package:flutter_test/flutter_test.dart';
import 'package:imc_calculator/models/pessoa.dart';

void main() {
  test('Calcular IMC corretamente', () {
    Pessoa pessoa = Pessoa(nome: 'Teste', peso: 70, altura: 1.75);
    expect(pessoa.calcularIMC(), closeTo(22.86, 0.01));
  });
}
