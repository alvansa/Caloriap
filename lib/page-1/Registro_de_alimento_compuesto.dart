import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Caloriapp.dart';
import 'package:myapp/page-1/Registrar_alimento.dart';

class Registro_de_alimento_compuesto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // registrodealimentocompuestonN3 (27:509)
        padding: EdgeInsets.fromLTRB(9*fem, 18*fem, 10.14*fem, 89*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20*fem),
          image: const DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/pattern-AAT.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // salidaDTM (27:910)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21*fem),
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
                    'assets/page-1/images/salida-QVV.png',
                    width: 45*fem,
                    height: 45*fem,
                  ),
                ),
              ),
            ),
            Container(
              // autogroupm991JDu (5HrPRCcQUe6MKT3haLm991)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
              width: double.infinity,
              height: 50*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // searchDLs (27:904)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(21*fem, 16*fem, 47*fem, 16*fem),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // iconsearchsAX (27:906)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                          width: 18*fem,
                          height: 18*fem,
                          child: Image.asset(
                            'assets/page-1/images/icon-search-F51.png',
                            width: 18*fem,
                            height: 18*fem,
                          ),
                        ),
                        Container(
                          // searcsampleyzF (27:909)
                          margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                          child: Text(
                            'What do you want to order?',
                            style: SafeGoogleFont (
                              'Roboto',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.1725*ffem/fem,
                              letterSpacing: 0.5*fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // botonaceptarGTZ (30:1808)
                    width: 73.86*fem,
                    height: double.infinity,
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
                        'Añadir',
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
                ],
              ),
            ),
            Container(
              // componentesdelalimentoHdZ (30:1807)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 498*fem),
              width: double.infinity,
              child: Text(
                'Componentes del alimento',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'News Cycle',
                  fontSize: 25*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3102272034*ffem/fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // botonaceptarBD9 (30:1816)
              margin: EdgeInsets.fromLTRB(103*fem, 0*fem, 100.86*fem, 0*fem),
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
                  padding: EdgeInsets.fromLTRB(1*fem, 4*fem, 1*fem, 4*fem),
                  width: double.infinity,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(15*fem),
                    gradient: const LinearGradient (
                      begin: Alignment(-1, -1.123),
                      end: Alignment(1, 1.228),
                      colors: <Color>[Color(0xff53e78b), Color(0xff14be77)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Align(
                    // registraralimentocompuestoQbh (30:1819)
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints (
                          maxWidth: 146*fem,
                        ),
                        child: Text(
                          'Registrar alimento compuesto',
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
              ),
            ),
          ],
        ),
      ),
          );
  }
}