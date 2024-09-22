import 'package:flutter/material.dart';

class OndeDormir extends StatelessWidget {
  const OndeDormir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Onde Dormir'),
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
          Card(
            color: Colors.green[50],
            child: ListTile(
              leading:
                  Image.asset('lib/img/semitem.JPG', width: 100, height: 100),
              title: const Text('Hotel Sol Nascente'),
              subtitle: const Text('Av. das Palmeiras, 123 - Centro'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    5,
                    (index) => Icon(
                          index < 4.2 ? Icons.star : Icons.star_border,
                          color: Colors.yellow,
                        )),
              ),
            ),
          ),
          Card(
            color: Colors.green[50],
            child: ListTile(
              leading:
                  Image.asset('lib/img/semitem.JPG', width: 100, height: 100),
              title: const Text('Pousada Mar Azul'),
              subtitle: const Text('Rua dos Pescadores, 45 - Praia Norte'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    5,
                    (index) => Icon(
                          index < 3.8 ? Icons.star : Icons.star_border,
                          color: Colors.yellow,
                        )),
              ),
            ),
          ),
          Card(
            color: Colors.green[50],
            child: ListTile(
              leading:
                  Image.asset('lib/img/semitem.JPG', width: 100, height: 100),
              title: const Text('Resort Paraíso Verde'),
              subtitle: const Text('Estrada do Paraíso, km 15 - Serra Verde'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    5,
                    (index) => Icon(
                          index < 4.9 ? Icons.star : Icons.star_border,
                          color: Colors.yellow,
                        )),
              ),
            ),
          ),
          Card(
            color: Colors.green[50],
            child: ListTile(
              leading:
                  Image.asset('lib/img/semitem.JPG', width: 100, height: 100),
              title: const Text('Hotel Encanto da Montanha'),
              subtitle: const Text('Rua das Pedras, 88 - Alto da Serra'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    5,
                    (index) => Icon(
                          index < 4.5 ? Icons.star : Icons.star_border,
                          color: Colors.yellow,
                        )),
              ),
            ),
          ),
          Card(
            color: Colors.green[50],
            child: ListTile(
              leading:
                  Image.asset('lib/img/semitem.JPG', width: 100, height: 100),
              title: const Text('Hotel Brisa do Mar'),
              subtitle: const Text('Av. das Ondas, 333 - Beira-Mar'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    5,
                    (index) => Icon(
                          index < 3.9 ? Icons.star : Icons.star_border,
                          color: Colors.yellow,
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
