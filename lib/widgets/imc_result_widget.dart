String imcResult(double imc) {
  if (imc < 16) {
    return 'Magreza Grave (IMC: ${imc.toStringAsFixed(2)})';
  } else if (imc < 17) {
    return 'Magreza Moderada (IMC: ${imc.toStringAsFixed(2)})';
  } else if (imc < 18.5) {
    return 'Magreza leve (IMC: ${imc.toStringAsFixed(2)})';
  } else if (imc < 25) {
    return 'Saudável (IMC: ${imc.toStringAsFixed(2)})';
  } else if (imc < 30) {
    return 'Sobrepeso (IMC: ${imc.toStringAsFixed(2)})';
  } else if (imc < 35) {
    return 'Obesidade Grau I (IMC: ${imc.toStringAsFixed(2)})';
  } else if (imc < 40) {
    return 'Obesidade Grau II (IMC: ${imc.toStringAsFixed(2)})';
  } else {
    return 'Obesidade Grau III (IMC: ${imc.toStringAsFixed(2)})';
  }
}
