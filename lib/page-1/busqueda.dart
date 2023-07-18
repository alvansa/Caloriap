import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class busqueda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // busquedaYGX (10:5664)
        padding: EdgeInsets.fromLTRB(54*fem, 58*fem, 54*fem, 64*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/pattern-saf.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // encuentratualimentoPY3 (20:6498)
              margin: EdgeInsets.fromLTRB(25*fem, 0*fem, 0*fem, 35*fem),
              constraints: BoxConstraints (
                maxWidth: 234*fem,
              ),
              child: Text(
                'Encuentra tu alimento',
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
              // searchdxB (20:6487)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 462*fem),
              padding: EdgeInsets.fromLTRB(21*fem, 16*fem, 47*fem, 16*fem),
              width: double.infinity,
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
                    // iconsearchgvT (20:6489)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                    width: 18*fem,
                    height: 18*fem,
                    child: Image.asset(
                      'assets/page-1/images/icon-search.png',
                      width: 18*fem,
                      height: 18*fem,
                    ),
                  ),
                  Container(
                    // searcsamplebGj (20:6492)
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
              // ctabutton5xb (30:914)
              margin: EdgeInsets.fromLTRB(53*fem, 0*fem, 53*fem, 0*fem),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 57*fem,
                  decoration: BoxDecoration (
                    borderRadius: BorderRadius.circular(15*fem),
                    gradient: LinearGradient (
                      begin: Alignment(-1, -1.123),
                      end: Alignment(1, 1.228),
                      colors: <Color>[Color(0xff53e78b), Color(0xff14be77)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Seleccionar',
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