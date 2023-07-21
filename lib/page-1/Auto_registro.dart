import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/controller/con_Signin.dart';
import 'package:myapp/page-1/Iniciar_sesion.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Caloriapp.dart';

//ejemplo
class Auto_registro extends StatelessWidget {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  controllerSingIn registro = controllerSingIn();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // crearcuentaWDm (6:2658)
        //padding: EdgeInsets.fromLTRB(18*fem, 75*fem, 18*fem, 21*fem),
        width: double.infinity,
        height: 812 * fem,
        decoration: BoxDecoration(
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20 * fem),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/page-1/images/pattern-k9M.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // logonombre2X8s (6:3487)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 16 * fem),
              width: 339 * fem,
              height: 240 * fem,
              child: Image.asset(
                'assets/page-1/images/logonombre-2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // crearcuentaptf (6:3489)
              margin: EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 20 * fem),
              child: Text(
                'Crear Cuenta',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'News Cycle',
                  fontSize: 25 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3102272034 * ffem / fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // formuv7 (6:3466)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 80 * fem),
              width: 325 * fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 19 * fem, 188 * fem, 17 * fem),
                    width: double.infinity,
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 20.01 * fem, 1 * fem),
                            width: 15.99 * fem,
                            height: 20 * fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-bulk-profile.png',
                              width: 15.99 * fem,
                              height: 20 * fem,
                            ),
                          ),
                        ),
                        Expanded(
                          // Utilizamos el widget Expanded aquí
                          child: TextField(
                            style: SafeGoogleFont(
                              'BentonSans Regular',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575 * ffem / fem,
                              letterSpacing: 0.5 * fem,
                              color: Color(0xffffffff),
                            ),
                            decoration: InputDecoration(
                              border: InputBorder
                                  .none, // Remove the border around the TextField
                              contentPadding:
                                  EdgeInsets.zero, // Remove any content padding
                              isDense:
                                  true, // Reduce the height of the TextField to match the original design
                              hintText:
                                  'Username', // Set the text you want to display (hint text)
                              hintStyle: SafeGoogleFont(
                                // Set the style for the hint text
                                'BentonSans Regular',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                letterSpacing: 0.5 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                            controller:
                                usernameController, // Use this controller to get or set the input value
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12 * fem,
                  ),
                  Container(
                    // nameforme71 (6:3467)
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 19 * fem, 188 * fem, 17 * fem),
                    width: double.infinity,
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          // iconlybulkprofileJBZ (6:3470)
                          opacity: 0.5,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 20.01 * fem, 1 * fem),
                            width: 15.99 * fem,
                            height: 20 * fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-bulk-message.png',
                              width: 15.99 * fem,
                              height: 20 * fem,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: SafeGoogleFont(
                              'BentonSans Regular',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575 * ffem / fem,
                              letterSpacing: 0.5 * fem,
                              color: Color(0xffffffff),
                            ),
                            decoration: InputDecoration(
                              border: InputBorder
                                  .none, // Remove the border around the TextField
                              contentPadding:
                                  EdgeInsets.zero, // Remove any content padding
                              isDense:
                                  true, // Reduce the height of the TextField to match the original design
                              hintText:
                                  'Email', // Set the text you want to display (hint text)
                              hintStyle: SafeGoogleFont(
                                // Set the style for the hint text
                                'BentonSans Regular',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                letterSpacing: 0.5 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                            controller:
                                emailController, // Use this controller to get or set the input value
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12 * fem,
                  ),
                  Container(
                    // passwordformiY7 (6:3475)
                    padding: EdgeInsets.fromLTRB(
                        23.5 * fem, 19 * fem, 22 * fem, 17 * fem),
                    width: double.infinity,
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Opacity(
                          // iconlybulklockbbu (6:3478)
                          opacity: 0.5,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 19.5 * fem, 1 * fem),
                            width: 17 * fem,
                            height: 20 * fem,
                            child: Image.asset(
                              'assets/page-1/images/iconly-bulk-lock-rVV.png',
                              width: 17 * fem,
                              height: 20 * fem,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            obscureText:
                                true, // This will make the TextField behave like a password input
                            style: SafeGoogleFont(
                              'BentonSans Regular',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575 * ffem / fem,
                              letterSpacing: 0.5 * fem,
                              color: Color(0xffffffff),
                            ),
                            decoration: InputDecoration(
                              border: InputBorder
                                  .none, // Remove the border around the TextField
                              contentPadding:
                                  EdgeInsets.zero, // Remove any content padding
                              isDense:
                                  true, // Reduce the height of the TextField to match the original design
                              hintText:
                                  'Password', // Set the text you want to display (hint text)
                              hintStyle: SafeGoogleFont(
                                // Set the style for the hint text
                                'BentonSans Regular',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2575 * ffem / fem,
                                letterSpacing: 0.5 * fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                            controller:
                                passwordController, // Use this controller to get or set the input value
                          ),
                        ),
                        Container(
                          // iconlybulkshow1Qj (6:3479)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: 20 * fem,
                          height: 16 * fem,
                          child: Image.asset(
                            'assets/page-1/images/iconly-bulk-show-rAK.png',
                            width: 20 * fem,
                            height: 16 * fem,
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
              margin:
                  EdgeInsets.fromLTRB(92 * fem, 0 * fem, 106 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {
                  //llamar a la funcion de auto registro
                  registro.RegistroUsuario(emailController.text,
                      usernameController.text, passwordController.text, 1);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
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
                    child: Text(
                      'Crear cuenta',
                      style: SafeGoogleFont(
                        'Noto Sans Bengali',
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
            Container(
              // creaunacuentaaquUsR (30:1800)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 0 * fem),
              child: TextButton(
                onPressed: () {
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (context) => Iniciar_sesion());
                  Navigator.push(context, route);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Text(
                  '¿Tienes una cuenta creada? Inicia sesión',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'ABeeZee',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.6652272542 * ffem / fem,
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
