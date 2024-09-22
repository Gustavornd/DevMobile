import 'package:flutter/material.dart';

class VirarParceiro extends StatelessWidget {
  const VirarParceiro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anuncie no App'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.green[50],
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Cadastre Sua Loja',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(labelText: 'Nome da Loja'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Contato'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Endereço'),
              ),
              TextField(
                decoration:
                    InputDecoration(labelText: 'Horario de Funcionamento'),
              ),
              Divider(),
              Center(
                child: ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
