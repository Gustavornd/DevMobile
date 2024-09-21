import 'package:flutter/material.dart';
import 'tela_inicial.dart';

String _tituloSalvo = "Nenhum Valor";

void main() {
  runApp(const AppBase());
}

class AppBase extends StatelessWidget {
  const AppBase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _tituloSalvo,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const TelaInicial(),
    );
  }
}
