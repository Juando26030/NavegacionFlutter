import 'package:flutter/material.dart';

class PantallaImagen extends StatelessWidget {
  const PantallaImagen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagen"),
      ),
      body: Center(
        child: Image.asset(
          'assets/images/imagen-actores.jpeg', // Ruta de la imagen en la carpeta assets
          width: 700,
          height: 700,
        ),
      ),
    );
  }
}
