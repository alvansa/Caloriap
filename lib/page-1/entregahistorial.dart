import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class entrega_historial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // entregahistorialTVq (10:6059)
        padding: EdgeInsets.fromLTRB(9*fem, 18*fem, 9*fem, 618*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20*fem),
          image: DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/fondo.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroup5u6ftr3 (5HrNqYuoqFYZcf9tcX5u6F)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 53*fem, 10*fem),
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // salidapDu (10:6475)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 31*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 45*fem,
                        height: 45*fem,
                        child: Image.asset(
                          'assets/page-1/images/salida.png',
                          width: 45*fem,
                          height: 45*fem,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // historialdealimentacinsxs (25:72)
                    margin: EdgeInsets.fromLTRB(0*fem, 30*fem, 0*fem, 0*fem),
                    constraints: BoxConstraints (
                      maxWidth: 228*fem,
                    ),
                    child: Text(
                      'Historial de alimentación',
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
                ],
              ),
            ),
            Container(
              // autogrouppqkbKps (5HrNvxvTH5XwBVbbctPqkb)
              margin: EdgeInsets.fromLTRB(45*fem, 0*fem, 45.14*fem, 0*fem),
              width: double.infinity,
              height: 50*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // fechaDvF (23:6503)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0*fem),
                    width: 167*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(15*fem),
                    ),
                    child: Container(
                      // firstnameformkfH (23:6504)
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
                      child: Center(
                        child: Text(
                          'DD/MM/AAAA',
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
                  ),
                  Container(
                    // botonaceptarnM5 (25:67)
                    width: 73.86*fem,
                    height: double.infinity,
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}