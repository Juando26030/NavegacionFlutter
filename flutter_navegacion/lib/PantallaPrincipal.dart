import 'package:flutter/material.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  final TextEditingController _controller = TextEditingController();
  String _texto = "";

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _texto = _controller.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Mi primer ejercicio"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              cursorColor: Theme.of(context).colorScheme.primary,
              decoration: const InputDecoration(
                hintText: 'Escribe aquí...', // Texto de ayuda para indicar dónde escribir
                border: UnderlineInputBorder(), // Línea inferior visible
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _texto.isNotEmpty
                      ? () {
                    Navigator.pushNamed(
                      context,
                      '/contenido',
                      arguments: _texto,
                    );
                  }
                      : null,
                  child: const Text("Contenido"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/imagen');
                  },
                  child: const Text("Imagen"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
