import 'package:flutter/material.dart';

class Eventos extends StatelessWidget {
  const Eventos({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Número de abas
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Eventos'),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.green,
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(text: 'Todos'),
              Tab(text: 'Musica'),
              Tab(text: 'Teatro'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Aba "Todos"
            ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Show de Rock'),
                    subtitle: const Text('Av. Três, 456 | 20:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Roda de Samba'),
                    subtitle: const Text('Praça Central | 19:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Future Rave'),
                    subtitle: const Text('Parque de Exposições | 22:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Romeu e Julieta'),
                    subtitle: const Text('Teatro Municipal | 19:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('MPB Acústico'),
                    subtitle: const Text('Cada da Dinda | 14:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Minha Mãe é uma Peça'),
                    subtitle: const Text('Museu de Arte | 18:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Pedro de o Lobo'),
                    subtitle: const Text('Centro Cultural | 15:00'),
                  ),
                ),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Show de Rock'),
                    subtitle: const Text('Av. Três, 456 | 20:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Roda de Samba'),
                    subtitle: const Text('Praça Central | 19:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Future Rave'),
                    subtitle: const Text('Parque de Exposições | 22:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('MPB Acústico'),
                    subtitle: const Text('Cada da Dinda | 14:00'),
                  ),
                ),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Romeu e Julieta'),
                    subtitle: const Text('Teatro Municipal | 19:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Minha Mãe é uma Peça'),
                    subtitle: const Text('Museu de Arte | 18:00'),
                  ),
                ),
                Card(
                  color: Colors.green[50],
                  child: ListTile(
                    leading: Image.asset('lib/img/semitem.JPG',
                        width: 100, height: 100),
                    title: const Text('Pedro de o Lobo'),
                    subtitle: const Text('Centro Cultural | 15:00'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
