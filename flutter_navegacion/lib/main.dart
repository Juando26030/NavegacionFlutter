import 'package:flutter/material.dart';
import 'package:flutter_navegacion/PantallaPrincipal.dart';
import 'package:flutter_navegacion/PantallaContenido.dart';
import 'package:flutter_navegacion/PantallaImagen.dart';


void main() {
  runApp(MaterialApp(
    title: 'Mi primer ejercicio',
    debugShowCheckedModeBanner: false,
    //home: PantallaPrincipal(),
    initialRoute: '/principal',
    routes: {
      '/principal': (context) => PantallaPrincipal(),
      '/contenido': (context) => PantallaContenido(),
      '/imagen': (context) => PantallaImagen(),
    },
  ));
}

