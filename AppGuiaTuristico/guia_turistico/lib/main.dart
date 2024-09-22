import 'package:flutter/material.dart';
import 'package:guia_turistico/lojas.dart';
import 'package:guia_turistico/onde_comer.dart';
import 'package:guia_turistico/onde_dormir.dart';
import 'package:guia_turistico/eventos.dart';
import 'package:guia_turistico/virar_parceito.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/lojas': (context) => const Lojas(),
        '/onde_comer': (context) => const OndeComer(),
        '/onde_dormir': (context) => const OndeDormir(),
        '/eventos': (context) => const Eventos(),
        '/vire_parceiro': (context) => const VirarParceiro(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.pushNamed(context, '/lojas');
      } else if (index == 1) {
        Navigator.pushNamed(context, '/eventos');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoGo Tours'),
        backgroundColor: Colors.green,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Se Torne Parceiro'),
              onTap: () {
                Navigator.pushNamed(context, '/vire_parceiro');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configurações'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.green[100],
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/lojas');
              },
              child: Image.asset('lib/img/lojas.png'),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/onde_comer');
              },
              child: Image.asset('lib/img/ondecomer.png'),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/onde_dormir');
              },
              child: Image.asset('lib/img/ondedormir.png'),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/eventos');
              },
              child: Image.asset('lib/img/eventos.png'),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Image.asset('lib/img/servicos.png'),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: Image.asset('lib/img/pontosturisticos.webp'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Nosso Time',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apartment_outlined),
            label: 'Fale Conosco',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
