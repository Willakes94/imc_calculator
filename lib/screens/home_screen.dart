import 'package:flutter/material.dart';
import '../models/pessoa.dart';
import '../widgets/imc_result_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();

  String _resultadoIMC = '';

  void _calcularIMC() {
    try {
      String nome = _nomeController.text;
      double peso = double.parse(_pesoController.text);
      double altura = double.parse(_alturaController.text);

      Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
      double imc = pessoa.calcularIMC();

      setState(() {
        _resultadoIMC = imcResult(imc);
      });
    } catch (e) {
      setState(() {
        _resultadoIMC = 'Erro: Verifique seus dados.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora de IMC')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              controller: _pesoController,
              decoration: InputDecoration(labelText: 'Peso (kg)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _alturaController,
              decoration: InputDecoration(labelText: 'Altura (m)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calcularIMC,
              child: Text('Calcular IMC'),
            ),
            SizedBox(height: 20),
            Text(_resultadoIMC),
          ],
        ),
      ),
    );
  }
}
