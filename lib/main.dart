import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/iniciar_sesion.dart';
import 'package:myapp/page-1/crearcuenta.dart';
import 'package:myapp/page-1/caloriapp.dart';
import 'package:myapp/page-1/registro-de-alimento.dart';
import 'package:myapp/page-1/registro-de-alimento-compuesto.dart';
import 'package:myapp/page-1/busqueda.dart';
import 'package:myapp/page-1/entregahistorial.dart';
import 'package:myapp/page-1/seleccin.dart';
import 'package:myapp/page-1/registroconsumo.dart';
import 'package:myapp/page-1/actualizar-alimento.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
        body: SingleChildScrollView(
          child: Iniciar_sesion(),
        ),
      ),
    );
  }
}
