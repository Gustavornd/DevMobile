import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const ATMConsultoriaApp());
}

class ATMConsultoriaApp extends StatelessWidget {
  const ATMConsultoriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ATM Consultoria',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const Home(),
    );
  }
}
