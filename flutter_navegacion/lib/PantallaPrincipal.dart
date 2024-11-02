import 'package:flutter/material.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal>{
  //Arranca parte visual----------------------------------------------
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Mi primer ejercicio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EditableText(
              controller: _controller,
              focusNode: FocusNode(),
              cursorColor: Theme.of(context).colorScheme.primary,
              backgroundCursorColor: Theme.of(context).colorScheme.secondary,
              selectionColor: Theme.of(context).colorScheme.secondary,
              selectionControls: MaterialTextSelectionControls(),
              onChanged: (String value) {
                setState(() {
                  _texto = value;
                });
              },
              style: Theme.of(context).textTheme.headlineMedium!,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _texto.isNotEmpty ? () => print("Contenido presionado") : null,
                  child: Text("Contenido"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => print("Imagen presionado"),
                  child: Text("Imagen"),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }


  //Arranca parte logica----------------------------------------------
  String _texto = "";

  final TextEditingController _controller = TextEditingController();


}






