import 'package:flutter/material.dart';
import 'home.dart';
import 'package:intl/intl.dart';

void main() {
  Intl.defaultLocale = 'pt_BR';
  runApp(const MaterialApp(
    title: "Máscaras e Validações",
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
