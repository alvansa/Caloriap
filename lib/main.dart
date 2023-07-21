import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/Actualizar_alimento.dart';
import 'package:myapp/page-1/Auto_registro.dart';
import 'package:myapp/page-1/Registrar_alimento.dart';
import 'package:myapp/page-1/caloriapp.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/iniciar_sesion.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Iniciar_sesion inicio = new Iniciar_sesion();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: sesion(),
      ),
    );
  }
}
