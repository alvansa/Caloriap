import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Caloriapp.dart';
import 'package:myapp/page-1/Seleccion_de_alimento.dart';

class Actualizar_alimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // actualizaralimentohV9 (30:1353)
        padding: EdgeInsets.fromLTRB(9 * fem, 18 * fem, 9 * fem, 54 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20 * fem),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/page-1/images/pattern.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupmp7rgVV (5HrM2mb4qyboDHzTG2Mp7R)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 312 * fem, 0 * fem),
              width: 45 * fem,
              height: 45 * fem,
              child: Image.asset(
                'assets/page-1/images/auto-group-mp7r.png',
                width: 45 * fem,
                height: 45 * fem,
              ),
            ),
            Container(
              // actualizaralimentoNdD (30:1788)
              margin: EdgeInsets.fromLTRB(20 * fem, 0 * fem, 0 * fem, 52 * fem),
              constraints: BoxConstraints(
                maxWidth: 179 * fem,
              ),
              child: Text(
                'Actualizar alimento',
                style: SafeGoogleFont(
                  'ABeeZee',
                  fontSize: 36 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.1825 * ffem / fem,
                  letterSpacing: 0.5 * fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // formCs9 (30:1758)
              margin:
                  EdgeInsets.fromLTRB(16 * fem, 0 * fem, 15 * fem, 63 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // nombrealimentoi4o (30:1765)
                    width: 325 * fem,
                    height: 45 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x19f4f4f4)),
                      color: Color(0x19ffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x115a6cea),
                          offset: Offset(12 * fem, 26 * fem),
                          blurRadius: 25 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Nombre',
                        style: SafeGoogleFont(
                          'News Cycle',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.645 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  Container(
                    // caloriasHXD (30:1762)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 325 * fem,
                    height: 45 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x19f4f4f4)),
                      color: Color(0x19ffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x115a6cea),
                          offset: Offset(12 * fem, 26 * fem),
                          blurRadius: 25 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Calorias',
                        style: SafeGoogleFont(
                          'News Cycle',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.645 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  Container(
                    // proteinasGtw (30:1759)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        128 * fem, 14 * fem, 127 * fem, 1 * fem),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x19f4f4f4)),
                      color: Color(0x19ffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x115a6cea),
                          offset: Offset(12 * fem, 26 * fem),
                          blurRadius: 25 * fem,
                        ),
                      ],
                    ),
                    child: Text(
                      'Proteinas',
                      style: SafeGoogleFont(
                        'News Cycle',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.645 * ffem / fem,
                        letterSpacing: 0.5 * fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  Container(
                    // grasastotalesgBy (30:1771)
                    width: 325 * fem,
                    height: 45 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x19f4f4f4)),
                      color: Color(0x19ffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x115a6cea),
                          offset: Offset(12 * fem, 26 * fem),
                          blurRadius: 25 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Grasas totales',
                        style: SafeGoogleFont(
                          'News Cycle',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.645 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  Container(
                    // hdecdispVQK (30:1768)
                    width: 325 * fem,
                    height: 45 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x19f4f4f4)),
                      color: Color(0x19ffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x115a6cea),
                          offset: Offset(12 * fem, 26 * fem),
                          blurRadius: 25 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'H. de C. disp.',
                        style: SafeGoogleFont(
                          'News Cycle',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.645 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  Container(
                    // azucares8iB (30:1774)
                    width: 325 * fem,
                    height: 45 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x19f4f4f4)),
                      color: Color(0x19ffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x115a6cea),
                          offset: Offset(12 * fem, 26 * fem),
                          blurRadius: 25 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Azucares',
                        style: SafeGoogleFont(
                          'News Cycle',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.645 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  Container(
                    // colesterolmFM (30:1777)
                    width: 325 * fem,
                    height: 45 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x19f4f4f4)),
                      color: Color(0x19ffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x115a6cea),
                          offset: Offset(12 * fem, 26 * fem),
                          blurRadius: 25 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Colesterol',
                        style: SafeGoogleFont(
                          'News Cycle',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.645 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  Container(
                    // sodioR51 (30:1780)
                    width: 325 * fem,
                    height: 45 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0x19f4f4f4)),
                      color: Color(0x19ffffff),
                      borderRadius: BorderRadius.circular(15 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x115a6cea),
                          offset: Offset(12 * fem, 26 * fem),
                          blurRadius: 25 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Sodio',
                        style: SafeGoogleFont(
                          'News Cycle',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.645 * ffem / fem,
                          letterSpacing: 0.5 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // ctabuttonrRD (30:1783)
              margin:
                  EdgeInsets.fromLTRB(107 * fem, 0 * fem, 108 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (context) => Caloriapp());
                  Navigator.push(context, route);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(31 * fem, 9 * fem, 33 * fem, 6 * fem),
                  width: double.infinity,
                  height: 57 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15 * fem),
                    gradient: const LinearGradient(
                      begin: Alignment(-1, -1.123),
                      end: Alignment(1, 1.228),
                      colors: <Color>[Color(0xff53e78b), Color(0xff14be77)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Center(
                    // actualizaralimentoqnw (30:1785)
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 78 * fem,
                        ),
                        child: Text(
                          'Actualizar alimento',
                          style: SafeGoogleFont(
                            'ABeeZee',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3102272749 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
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
