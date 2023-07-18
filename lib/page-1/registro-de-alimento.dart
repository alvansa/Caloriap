import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/caloriapp.dart';
import 'package:myapp/page-1/registro-de-alimento-compuesto.dart';

class registro_alimento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // registrodealimentoALo (6:3986)
        padding: EdgeInsets.fromLTRB(24*fem, 27*fem, 25*fem, 76*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20*fem),
          image: const DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/pattern-71q.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupysz716X (5HrPqmjoC1ajMEuSurYsz7)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 101*fem, 0*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // groupKd1 (10:6471)
                    margin: EdgeInsets.fromLTRB(0*fem, 11*fem, 62*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {
                        MaterialPageRoute route =
                          MaterialPageRoute(builder: (context) => caloriapp());
                          Navigator.push(context, route);

                      },
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: 45*fem,
                        height: 45*fem,
                        child: Image.asset(
                          'assets/page-1/images/group.png',
                          width: 45*fem,
                          height: 45*fem,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    // caloriapplogopequeofinaltalvez (6:4415)
                    width: 117*fem,
                    height: 107*fem,
                    child: Image.asset(
                      'assets/page-1/images/caloriapplogopequeofinaltalvez-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // ingresaralimentovco (6:4414)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 0*fem, 16*fem),
              child: Text(
                'Ingresar alimento',
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
              // formRJf (6:4388)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 66*fem),
              width: double.infinity,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(15*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // nombrealimentoWb1 (6:4395)
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
                    // caloriasiSB (6:4392)
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
                    // proteinasXPd (6:4389)
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
                    // grasastotalesvwZ (6:4401)
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
                    // hdecdispZzX (6:4398)
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
                    // azucaresCGo (6:4404)
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
                    // colesterolRQT (6:4407)
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
                    // sodioFPV (6:4410)
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
            Container(
              // autogroup1dhhJcf (5HrPx6taktLcSckF5D1DHH)
              margin: EdgeInsets.fromLTRB(31*fem, 0*fem, 20*fem, 0*fem),
              width: double.infinity,
              height: 50*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // botonaceptarRhH (27:488)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 49.14*fem, 0*fem),
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
                  TextButton(
                    // botonaceptarqFD (27:505)
                    onPressed: () {
                    MaterialPageRoute route = 
                      MaterialPageRoute(builder: (context) => registro_alimento_compuesto());
                      Navigator.push(context, route);

                    },
                    style: TextButton.styleFrom (
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(1*fem, 4*fem, 1*fem, 4*fem),
                      width: 152*fem,
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
                      child: Align(
                        // registraralimentocompuestoW6T (27:508)
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}