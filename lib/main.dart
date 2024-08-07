import 'package:flutter/material.dart';
import 'package:interface_nubank/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      theme: ThemeData(primaryColor: Colors.purple),
      home: const HomePage(),
    );
  }
}


//Parte 10 - min 6:00 completa