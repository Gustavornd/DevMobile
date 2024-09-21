import 'package:flutter/material.dart';

class TelaEmpresa extends StatelessWidget {
  const TelaEmpresa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Empresa'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  'lib/img/detalhe_empresa.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(width: 16),
                const Text(
                  'Sobre a empresa',
                  style: TextStyle(fontSize: 24, color: Color(0xFFFF5722)),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              'A ATM Consultoria é uma empresa especializada em soluções financeiras e '
              'consultoria empresarial. Com anos de experiência, ajudamos nossos clientes a '
              'alcançar seus objetivos financeiros e empresariais.',
              style: TextStyle(fontSize: 18),
            ),
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
