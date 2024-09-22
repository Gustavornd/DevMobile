import 'package:flutter/material.dart';

class OndeComer extends StatelessWidget {
  const OndeComer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onde Comer'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          ListTile(
            title: const Text('Comida Brasileira'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Comida Italiana'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Comida Japonesa'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Comida Árabe'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Comida Mexicana'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Fitness'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Fast Food'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Ação ao clicar
            },
          ),
        ],
      ),
    );
  }
}
