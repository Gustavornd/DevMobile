import 'package:flutter/material.dart';

// ignore: must_be_immutable

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _HomeState();
}

class _HomeState extends State<MyApp> {
  final TextEditingController _controllerAlcool = TextEditingController();
  final TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado = "Digite números maiores que 0 e utilize (.)";
      });
    } else {
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com Gasolina";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com Álcool";
        });
      }
      _limparCampos();
    }
  }

  void _limparCampos() {
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Álcool ou Gasolina",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("lib/img/logo.png"),
              const SizedBox(height: 20),
              const Text(
                "Saiba qual a melhor opção para abastecimento do seu veículo",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Preço do Álcool, ex. 4.99",
                  labelStyle: TextStyle(color: Colors.purpleAccent),
                ),
                controller: _controllerAlcool,
              ),
              const SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Preço da Gasolina, ex. 7.99",
                  labelStyle: TextStyle(color: Colors.purpleAccent),
                ),
                controller: _controllerGasolina,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                onPressed: _calcular,
                child: const Text(
                  "Calcular",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                _textoResultado,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
