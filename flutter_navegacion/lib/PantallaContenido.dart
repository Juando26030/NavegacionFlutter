import 'package:flutter/material.dart';

class PantallaContenido extends StatelessWidget {
  const PantallaContenido({super.key});

  @override
  Widget build(BuildContext context) {
    final String texto = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contenido"),
      ),
      body: Center(
        child: Text(
          texto,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
