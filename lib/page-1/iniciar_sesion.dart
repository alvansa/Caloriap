import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/crearcuenta.dart' ;
import 'package:myapp/page-1/caloriapp.dart'; 

class iniciar_sesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // iniciarsesinpjh (6:3524)
        padding: EdgeInsets.fromLTRB(25*fem, 76*fem, 11*fem, 21*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // logonombre3Grb (6:3932)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
              width: 339*fem,
              height: 240*fem,
              child: Image.asset(
                'assets/page-1/images/logonombre-3.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // loginym1 (6:3934)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 19*fem),
              child: Text(
                'Login',
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
            Container( //linea importantisima diegooooo
              // formHFu (6:3935)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 14*fem, 92*fem),
              width: 325*fem,
              height: 128*fem,
              child: Stack(
                children: [ //hasta aqui es la definicion de los 2 cuadros
                  Positioned(  //cuadro 1
                    // nameformoV9 (6:3936)
                    left: 0*fem,
                    top: 0*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(24*fem, 19*fem, 188*fem, 17*fem),
                      width: 325*fem,
                      height: 57*fem,
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
                          Opacity(
                            // iconlybulkprofileeEs (6:3939)
                            opacity: 0.5,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.01*fem, 1*fem),
                              width: 15.99*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/page-1/images/iconly-bulk-profile-7cT.png',
                                width: 15.99*fem,
                                height: 20*fem,
                              ),
                            ),
                          ),
                          Container(
                            // emaildMh (6:3938)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                            child: Text(
                              'Anamwp . . |',
                              style: SafeGoogleFont (
                                'BentonSans Regular',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                letterSpacing: 0.5*fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned( //cuadro 2
                    // passwordformvLo (6:3940)
                    left: 0*fem,
                    top: 74*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(23.5*fem, 19*fem, 22*fem, 17*fem),
                      width: 325*fem,
                      height: 57*fem,
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
                          Opacity(
                            // iconlybulklockAF9 (6:3943)
                            opacity: 0.5,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.5*fem, 1*fem),
                              width: 17*fem,
                              height: 20*fem,
                              child: Image.asset(
                                'assets/page-1/images/iconly-bulk-lock-YRu.png',
                                width: 17*fem,
                                height: 20*fem,
                              ),
                            ),
                          ),
                          Container(
                            // emailSyM (6:3942)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 160*fem, 0*fem),
                            child: Text(
                              'Password',
                              style: SafeGoogleFont (
                                'BentonSans Regular',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575*ffem/fem,
                                letterSpacing: 0.5*fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            //iconlybulkshowmJo(6:3954)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                            width: 20*fem,
                            height: 16*fem,
                            child: Image.asset(
                              "assets/page-1/images/iconly-bulk-show-Nbq.png",
                              width: 20*fem,
                              height: 16*fem,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned( //boton
                    // formHDH (6:3945)
                    left: 0*fem,
                    top: 0*fem,
                    child: SizedBox(
                      width: 325*fem,
                      height: 140*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // nameformCr3 (6:3946)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                            padding: EdgeInsets.fromLTRB(24*fem, 19*fem, 188*fem, 17*fem),
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
                                Opacity(
                                  // iconlybulkprofileGL7 (6:3949)
                                  opacity: 0.5,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.01*fem, 1*fem),
                                    width: 15.99*fem,
                                    height: 20*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/iconly-bulk-profile-Pgj.png',
                                      width: 15.99*fem,
                                      height: 20*fem,
                                    ),
                                  ),
                                ),
                                Container(
                                  // emailxij (6:3948)
                                  margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'Anamwp . . |',
                                    style: SafeGoogleFont (
                                      'BentonSans Regular',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      letterSpacing: 0.5*fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // passwordformUBH (6:3950)
                            padding: EdgeInsets.fromLTRB(23.5*fem, 19*fem, 22*fem, 17*fem),
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
                                Opacity(
                                  // iconlybulklock9YK (6:3953)
                                  opacity: 0.5,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.5*fem, 1*fem),
                                    width: 17*fem,
                                    height: 20*fem,
                                    child: Image.asset(
                                      'assets/page-1/images/iconly-bulk-lock.png',
                                      width: 17*fem,
                                      height: 20*fem,
                                    ),
                                  ),
                                ),
                                Container(
                                  // emaileV5 (6:3952)
                                  margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 160*fem, 0*fem),
                                  child: Text(
                                    'Password',
                                    style: SafeGoogleFont (
                                      'BentonSans Regular',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2575*ffem/fem,
                                      letterSpacing: 0.5*fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // iconlybulkshowmJo (6:3954)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                  width: 20*fem,
                                  height: 16*fem,
                                  child: Image.asset(
                                    'assets/page-1/images/iconly-bulk-show-Nbq.png',
                                    width: 20*fem,
                                    height: 16*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // ctabutton66B (6:3955)
              margin: EdgeInsets.fromLTRB(92*fem, 0*fem, 106*fem, 113*fem),
              child: TextButton(
                onPressed: () {
                  MaterialPageRoute route = 
                    MaterialPageRoute(builder: (context) => caloriapp());
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
                      'Login',
                      style: SafeGoogleFont (
                        'Noto Sans Bengali',
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
            Container(
              // creaunacuentaaquUsR (30:1800)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 0*fem),
              child: TextButton(
                onPressed: () {
                  MaterialPageRoute route = 
                    MaterialPageRoute(builder: (context) => crear_cuenta());
                  Navigator.push(context, route);
                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  'Crea una cuenta aquí',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'ABeeZee',
                    fontSize: 12*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.6652272542*ffem/fem,
                    color: Color(0xff53e88b),
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