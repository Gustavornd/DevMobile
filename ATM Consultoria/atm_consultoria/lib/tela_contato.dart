import 'package:flutter/material.dart';

class TelaContato extends StatelessWidget {
  const TelaContato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              'lib/img/detalhe_contato.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(width: 16),
            const Text('Telefone: (11) 1234-5678',
                style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('Email: contato@atmconsultoria.com.br',
                style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
