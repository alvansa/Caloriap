import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Caloriapp.dart'; 
import 'package:myapp/page-1/Seleccion_de_alimento.dart';

class Registrar_consumo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // registroconsumovEB (27:73)
        padding: EdgeInsets.fromLTRB(9*fem, 18*fem, 9*fem, 220*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20*fem),
          image: const DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/pattern-LW3.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // salidawf5 (27:477)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 312*fem, 0*fem),
              child: TextButton(
                onPressed: () {
                Navigator.pop(context);
  
                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 45*fem,
                  height: 45*fem,
                  child: Image.asset(
                    'assets/page-1/images/salida-BMh.png',
                    width: 45*fem,
                    height: 45*fem,
                  ),
                ),
              ),
            ),
            Container(
              // registratuconsumodH1 (27:476)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 216*fem),
              constraints: BoxConstraints (
                maxWidth: 191*fem,
              ),
              child: Text(
                'Registra tu consumo',
                style: SafeGoogleFont (
                  'ABeeZee',
                  fontSize: 36*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.1825*ffem/fem,
                  letterSpacing: 0.5*fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // fechaVKD (27:472)
              margin: EdgeInsets.fromLTRB(95*fem, 0*fem, 95*fem, 120*fem),
              width: double.infinity,
              height: 50*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(15*fem),
              ),
              child: Container(
                // firstnameformoao (27:473)
                padding: EdgeInsets.fromLTRB(19.75*fem, 15*fem, 19.75*fem, 18*fem),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration (
                  border: Border.all(color: Color(0x19f4f4f4)),
                  color: Color(0x19ffffff),
                  borderRadius: BorderRadius.circular(15*fem),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x115a6cea),
                      offset: Offset(12*fem, 26*fem),
                      blurRadius: 25*fem,
                    ),
                  ],
                ),
                child: Text(
                  'PORCIÓN',
                  style: SafeGoogleFont (
                    'ABeeZee',
                    fontSize: 14*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.1825*ffem/fem,
                    letterSpacing: 0.5*fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
            Container(
              // ctabuttonD8j (27:481)
              margin: EdgeInsets.fromLTRB(101*fem, 0*fem, 95*fem, 0*fem),
              child: TextButton(
                onPressed: () {
                  MaterialPageRoute route = 
                    MaterialPageRoute(builder: (context) => Caloriapp());
                    Navigator.push(context, route);

                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 57*fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(15*fem),
                    gradient: const LinearGradient (
                      begin: Alignment(-1, -1.123),
                      end: Alignment(1, 1.228),
                      colors: <Color>[Color(0xff53e78b), Color(0xff14be77)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Aceptar',
                      style: SafeGoogleFont (
                        'ABeeZee',
                        fontSize: 16*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3102272749*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}