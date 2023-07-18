import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/Registrar_consumo.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Caloriapp.dart';
import 'package:myapp/page-1/Actualizar_alimento.dart';

class Seleccion_de_alimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // seleccinqwd (30:917)
        padding: EdgeInsets.fromLTRB(9*fem, 7*fem, 0*fem, 84*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20*fem),
          image: const DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/pattern-xzT.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupew2bstK (5HrMrusWsDCN9vN2rXEW2B)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
              width: double.infinity,
              height: 631*fem,
              child: Stack(
                children: [
                  Positioned(
                    // formbZR (30:1314)
                    left: 16*fem,
                    top: 194*fem,
                    child: Container(
                      width: 326*fem,
                      height: 437*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(15*fem),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // nombrealimento6FH (30:1321)
                            width: 325*fem,
                            height: 45*fem,
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
                            child: Center(
                              child: Text(
                                'Nombre',
                                style: SafeGoogleFont (
                                  'News Cycle',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.645*ffem/fem,
                                  letterSpacing: 0.5*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // caloriasf5R (30:1318)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                            width: 325*fem,
                            height: 45*fem,
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
                            child: Center(
                              child: Text(
                                'Calorias',
                                style: SafeGoogleFont (
                                  'News Cycle',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.645*ffem/fem,
                                  letterSpacing: 0.5*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // proteinasFZR (30:1315)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                            padding: EdgeInsets.fromLTRB(128*fem, 14*fem, 127*fem, 1*fem),
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
                              'Proteinas',
                              style: SafeGoogleFont (
                                'News Cycle',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.645*ffem/fem,
                                letterSpacing: 0.5*fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // grasastotalesGzK (30:1327)
                            width: 325*fem,
                            height: 45*fem,
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
                            child: Center(
                              child: Text(
                                'Grasas totales',
                                style: SafeGoogleFont (
                                  'News Cycle',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.645*ffem/fem,
                                  letterSpacing: 0.5*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // hdecdispWtf (30:1324)
                            width: 325*fem,
                            height: 45*fem,
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
                            child: Center(
                              child: Text(
                                'H. de C. disp.',
                                style: SafeGoogleFont (
                                  'News Cycle',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.645*ffem/fem,
                                  letterSpacing: 0.5*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // azucares9wd (30:1330)
                            width: 325*fem,
                            height: 45*fem,
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
                            child: Center(
                              child: Text(
                                'Azucares',
                                style: SafeGoogleFont (
                                  'News Cycle',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.645*ffem/fem,
                                  letterSpacing: 0.5*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // colesterolNpP (30:1333)
                            width: 325*fem,
                            height: 45*fem,
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
                            child: Center(
                              child: Text(
                                'Colesterol',
                                style: SafeGoogleFont (
                                  'News Cycle',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.645*ffem/fem,
                                  letterSpacing: 0.5*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 11*fem,
                          ),
                          Container(
                            // sodio1cT (30:1336)
                            width: 325*fem,
                            height: 45*fem,
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
                            child: Center(
                              child: Text(
                                'Sodio',
                                style: SafeGoogleFont (
                                  'News Cycle',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.645*ffem/fem,
                                  letterSpacing: 0.5*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // logonombre1gCo (30:1345)
                    left: 10*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 356*fem,
                        height: 239*fem,
                        child: Image.asset(
                          'assets/page-1/images/logonombre-1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // salidaP7D (30:1347)
                    left: 0*fem,
                    top: 11*fem,
                    child: Align(
                      child: SizedBox(
                        width: 45*fem,
                        height: 45*fem,
                        child: TextButton(
                          onPressed: () {
                           MaterialPageRoute route = 
                            MaterialPageRoute(builder: (context) => Caloriapp());
                            Navigator.push(context, route);

                          },
                          style: TextButton.styleFrom (
                            padding: EdgeInsets.zero,
                          ),
                          child: Image.asset(
                            'assets/page-1/images/salida-dg3.png',
                            width: 45*fem,
                            height: 45*fem,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouptqifs2P (5HrNHQAiJ854bJGxGVTqif)
              margin: EdgeInsets.fromLTRB(19*fem, 0*fem, 22*fem, 0*fem),
              width: double.infinity,
              height: 57*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // ctabuttonmtT (30:1339)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {
                       MaterialPageRoute route = 
                        MaterialPageRoute(builder: (context) => Registrar_consumo());
                        Navigator.push(context, route);

                      },
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(34*fem, 9*fem, 41*fem, 6*fem),
                        width: 143*fem,
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
                          // registrarconsumobMh (30:1341)
                          child: SizedBox(
                            child: Container(
                              constraints: BoxConstraints (
                                maxWidth: 68*fem,
                              ),
                              child: Text(
                                'Registrar consumo',
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
                  TextButton(
                    // ctabuttongtw (30:1342)
                    onPressed: () {
                      MaterialPageRoute route = 
                        MaterialPageRoute(builder: (context) => Actualizar_alimento());
                        Navigator.push(context, route);

                    },
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(31*fem, 9*fem, 33*fem, 6*fem),
                      width: 142*fem,
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
                        // actualizaralimentoXuZ (30:1344)
                        child: SizedBox(
                          child: Container(
                            constraints: BoxConstraints (
                              maxWidth: 78*fem,
                            ),
                            child: Text(
                              'Actualizar alimento',
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}