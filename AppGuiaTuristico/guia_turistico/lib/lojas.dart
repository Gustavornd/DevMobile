import "package:flutter/material.dart";
import "package:guia_turistico/virar_parceito.dart";

class Lojas extends StatelessWidget {
  const Lojas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lojas Pareceiras',
        ),
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
              title: const Text('Loja Estilo & Moda'),
              subtitle: const Text(' Av. Principal, 120 - Centro'),
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
              title: const Text('TecnoStore Eletrônicos'),
              subtitle: const Text('Rua dos Inventores, 200 - Bairro Digital'),
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
              title: const Text('Mundo Verde Natural'),
              subtitle: const Text('Alameda das Árvores, 45 - Parque Verde'),
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
              title: const Text('Livraia Saber Infinito'),
              subtitle: const Text('Rua da Leitura, 88 - Centro'),
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
              title: const Text('Supermercado Bom Preço'),
              subtitle: const Text('Av. das Rosas, 300 - Centro'),
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
          const Divider(),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VirarParceiro()),
                );
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.green),
              ),
              child: const Text(
                'Virar Parceiro',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
