import 'package:atividade_2_fiap/src/basic_structure.dart';
import 'package:atividade_2_fiap/src/pages/home_page.dart';
import 'package:atividade_2_fiap/src/pages/monte_sua_pizza_page.dart';
import 'package:flutter/material.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizzaria FIAP',
      home: BasicStructure(),
    );
  }
}