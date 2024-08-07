import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
const MyApp({ super.key });

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases do dia',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Frases do dia"),
          backgroundColor: Colors.greenAccent,
        ),
        body: const Text("Corpo da página"),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Conta"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket), label: "Pedidos"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label:"Favoritos"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Configuração")
          ],
        ),     
      )
    );
      
  }
  
}
