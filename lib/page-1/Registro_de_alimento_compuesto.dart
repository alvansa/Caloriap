import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/caloriapp.dart';
import 'package:myapp/page-1/Registrar_alimento.dart';

class Registro_alimento_compuesto extends StatefulWidget {
  final String email;
  //Constructor de alimento compuesto
  const Registro_alimento_compuesto({super.key, required this.email});

  Widget registro_al_comp() {
    return new Scaffold(
      body: Registro_alimento_compuesto(email: email),
    );
  }

  @override
  State<Registro_alimento_compuesto> createState() =>
      _Registro_alimento_compuestoState();
}

class _Registro_alimento_compuestoState
    extends State<Registro_alimento_compuesto> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            // Definición del fondo de pantalla
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff0c0c0c),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/page-1/images/pattern-71q.png'),
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                width: double.infinity,
                child: Container(
                  // registrodealimentoALo (6:3986)
                  padding:
                      EdgeInsets.fromLTRB(24 * fem, 0 * fem, 25 * fem, 0 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff0c0c0c)
                        .withOpacity(0.8), // Agregar opacidad al color de fondo
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupysz716X (5HrPqmjoC1ajMEuSurYsz7)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 101 * fem, 0 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // groupKd1 (10:6471)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 11 * fem, 62 * fem, 0 * fem),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: SizedBox(
                                  width: 45 * fem,
                                  height: 45 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group.png',
                                    width: 45 * fem,
                                    height: 45 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Titulo de 'Registrar Alimento Compuesto'
                      Container(
                        // ingresaralimentovco (6:4414)
                        margin: EdgeInsets.fromLTRB(
                            9 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Text(
                          'Registrar Alimento Compuesto',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsCycle(
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3102272034 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // formRJf (6:4388)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [],
                        ),
                      ),
                      //Botones
                      Container(
                        // autogroup1dhhJcf (5HrPx6taktLcSckF5D1DHH)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        width: double.infinity,
                        height: 50 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              // botonaceptarqFD (27:505)
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    1 * fem, 4 * fem, 1 * fem, 4 * fem),
                                width: 157 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  gradient: const LinearGradient(
                                    begin: Alignment(-1, -1.123),
                                    end: Alignment(1, 1.228),
                                    colors: <Color>[
                                      Color.fromRGBO(228, 74, 31, 1),
                                      Color.fromRGBO(228, 74, 31, 1)
                                    ],
                                    stops: <double>[0, 1],
                                  ),
                                ),
                                child: Align(
                                  // registraralimentocompuestoW6T (27:508)
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    child: Container(
                                      constraints:
                                          BoxConstraints(maxWidth: 146 * fem),
                                      child: Text(
                                        'Aceptar',
                                        style: GoogleFonts.aBeeZee(
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
                            TextButton(
                              // botonaceptarqFD (27:505)
                              onPressed: () {
                                //registar alimento
                                //registrar consumo
                                //pasar a la pagina de caloriapp principal
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.fromLTRB(
                                    10 * fem, 0 * fem, 0 * fem, 0 * fem),
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    1 * fem, 4 * fem, 1 * fem, 4 * fem),
                                width: 155 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  gradient: const LinearGradient(
                                    begin: Alignment(-1, -1.123),
                                    end: Alignment(1, 1.228),
                                    colors: <Color>[
                                      Color.fromRGBO(228, 74, 31, 1),
                                      Color.fromRGBO(228, 74, 31, 1)
                                    ],
                                    stops: <double>[0, 1],
                                  ),
                                ),
                                child: Align(
                                  // registraralimentocompuestoW6T (27:508)
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    child: Container(
                                      constraints:
                                          BoxConstraints(maxWidth: 146 * fem),
                                      child: Text(
                                        'Aceptar y registrar consumo',
                                        style: GoogleFonts.aBeeZee(
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
