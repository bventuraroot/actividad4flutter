import 'package:flutter/material.dart';
import 'package:actividad4flutter/pantalla1.dart';

void main() {
  runApp(Animacion());
}

class Animacion extends StatelessWidget {
  const Animacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pantalla1(),
    );
  }
}
