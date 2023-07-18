import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/caloriapp.dart';

class crear_cuenta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // crearcuentaWDm (6:2658)
        padding: EdgeInsets.fromLTRB(18*fem, 75*fem, 18*fem, 21*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20*fem),
          image: const DecorationImage (
            fit: BoxFit.cover,
            image: AssetImage (
              'assets/page-1/images/pattern-k9M.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // logonombre2X8s (6:3487)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
              width: 339*fem,
              height: 240*fem,
              child: Image.asset(
                'assets/page-1/images/logonombre-2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // crearcuentaptf (6:3489)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 17*fem),
              child: Text(
                'Crear Cuenta',
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
              // formuv7 (6:3466)
              margin: EdgeInsets.fromLTRB(7*fem, 0*fem, 7*fem, 80*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // nameforme71 (6:3467)
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
                          // iconlybulkprofileJBZ (6:3470)
                          opacity: 0.5,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20.01*fem, 1*fem),
                            width: 15.99*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-bulk-profile.png',
                              width: 15.99*fem,
                              height: 20*fem,
                            ),
                          ),
                        ),
                        Container(
                          // emailn6j (6:3469)
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
                  SizedBox(
                    height: 12*fem,
                  ),
                  Container(
                    // emailform4pw (6:3471)
                    padding: EdgeInsets.fromLTRB(22*fem, 20*fem, 229*fem, 17*fem),
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
                          // iconlybulkmessagevMM (6:3474)
                          opacity: 0.5,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 2*fem),
                            width: 20*fem,
                            height: 18*fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-bulk-message.png',
                              width: 20*fem,
                              height: 18*fem,
                            ),
                          ),
                        ),
                        Container(
                          // emailRJ7 (6:3473)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          child: Text(
                            'Email',
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
                  SizedBox(
                    height: 12*fem,
                  ),
                  Container(
                    // passwordformiY7 (6:3475)
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
                          // iconlybulklockbbu (6:3478)
                          opacity: 0.5,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19.5*fem, 1*fem),
                            width: 17*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-bulk-lock-rVV.png',
                              width: 17*fem,
                              height: 20*fem,
                            ),
                          ),
                        ),
                        Container(
                          // emailhuq (6:3477)
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
                          // iconlybulkshow1Qj (6:3479)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 20*fem,
                          height: 16*fem,
                          child: Image.asset(
                            'assets/page-1/images/iconly-bulk-show-rAK.png',
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
                      'Crear cuenta',
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
                    MaterialPageRoute(builder: (context) => caloriapp());
                  Navigator.push(context, route);
                },
                style: TextButton.styleFrom (
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  '¿Tienes una cuenta creada? pincha aquí',
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