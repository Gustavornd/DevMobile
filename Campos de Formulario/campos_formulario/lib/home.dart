import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:brasil_fields/brasil_fields.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _cpfController = TextEditingController();
  String _valorRecuperado = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Entrada de Dados"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: _cpfController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CpfInputFormatter(),
              ],
              decoration: const InputDecoration(
                hintText: "Digite o CPF",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Recuperar Valor"),
              onPressed: () {
                setState(() {
                  _valorRecuperado = _cpfController.text.toString();
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              "Valor: $_valorRecuperado",
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
