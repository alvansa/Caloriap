import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/Registrar_consumo.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Caloriapp.dart';
import 'package:myapp/page-1/Registro_de_alimento_compuesto.dart';
import '../controller/controller_reg_alimento.dart';

class Registrar_alimento extends StatelessWidget {
  @override
  final nombreController = TextEditingController();
  final caloriasController = TextEditingController();
  final proteinasController = TextEditingController();
  final grasasController = TextEditingController();
  final carbohidratosController = TextEditingController();
  final azucaresController = TextEditingController();
  final colesterolController = TextEditingController();
  final sodioController = TextEditingController();
  final porcionController = TextEditingController();

  con_reg_alimento alimento = con_reg_alimento();

  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // registrodealimentoALo (6:3986)
        padding: EdgeInsets.fromLTRB(24 * fem, 0 * fem, 25 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff0c0c0c),
          borderRadius: BorderRadius.circular(20 * fem),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/page-1/images/pattern-71q.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupysz716X (5HrPqmjoC1ajMEuSurYsz7)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 101 * fem, 0 * fem),
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
            Container(
              // ingresaralimentovco (6:4414)
              margin: EdgeInsets.fromLTRB(9 * fem, 0 * fem, 0 * fem, 16 * fem),
              child: Text(
                'Ingresar alimento',
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
              // formRJf (6:4388)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15 * fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    controller: nombreController,
                    style: TextStyle(
                      fontFamily: 'News Cycle',
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12 * fem, horizontal: 16 * fem),
                      hintText: 'Nombre',
                      hintStyle: TextStyle(
                        fontFamily: 'News Cycle',
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5 * fem,
                        color: Color(0x99ffffff),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x5a6cea)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      filled: true,
                      fillColor: Color(0x19ffffff),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  TextField(
                    controller: caloriasController,
                    style: TextStyle(
                      fontFamily: 'News Cycle',
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12 * fem, horizontal: 16 * fem),
                      hintText: 'Calorias (kcal)',
                      hintStyle: TextStyle(
                        fontFamily: 'News Cycle',
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5 * fem,
                        color: Color(0x99ffffff),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x5a6cea)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      filled: true,
                      fillColor: Color(0x19ffffff),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  TextField(
                    controller: proteinasController,
                    style: TextStyle(
                      fontFamily: 'News Cycle',
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12 * fem, horizontal: 16 * fem),
                      hintText: 'Proteinas (g)',
                      hintStyle: TextStyle(
                        fontFamily: 'News Cycle',
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5 * fem,
                        color: Color(0x99ffffff),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x5a6cea)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      filled: true,
                      fillColor: Color(0x19ffffff),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  TextField(
                    controller: grasasController,
                    style: TextStyle(
                      fontFamily: 'News Cycle',
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12 * fem, horizontal: 16 * fem),
                      hintText: 'Grasas totales (g)',
                      hintStyle: TextStyle(
                        fontFamily: 'News Cycle',
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5 * fem,
                        color: Color(0x99ffffff),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x5a6cea)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      filled: true,
                      fillColor: Color(0x19ffffff),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  TextField(
                    controller: carbohidratosController,
                    style: TextStyle(
                      fontFamily: 'News Cycle',
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12 * fem, horizontal: 16 * fem),
                      hintText: 'H. de C. disp (g)',
                      hintStyle: TextStyle(
                        fontFamily: 'News Cycle',
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5 * fem,
                        color: Color(0x99ffffff),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x5a6cea)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      filled: true,
                      fillColor: Color(0x19ffffff),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  TextField(
                    controller: azucaresController,
                    style: TextStyle(
                      fontFamily: 'News Cycle',
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12 * fem, horizontal: 16 * fem),
                      hintText: 'Azucares (g)',
                      hintStyle: TextStyle(
                        fontFamily: 'News Cycle',
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5 * fem,
                        color: Color(0x99ffffff),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x5a6cea)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      filled: true,
                      fillColor: Color(0x19ffffff),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  TextField(
                    controller: colesterolController,
                    style: TextStyle(
                      fontFamily: 'News Cycle',
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12 * fem, horizontal: 16 * fem),
                      hintText: 'Colesterol (mg)',
                      hintStyle: TextStyle(
                        fontFamily: 'News Cycle',
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5 * fem,
                        color: Color(0x99ffffff),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x5a6cea)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      filled: true,
                      fillColor: Color(0x19ffffff),
                    ),
                  ),
                  SizedBox(
                    height: 11 * fem,
                  ),
                  TextField(
                    controller: sodioController,
                    style: TextStyle(
                      fontFamily: 'News Cycle',
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12 * fem, horizontal: 16 * fem),
                      hintText: 'Sodio (mg)',
                      hintStyle: TextStyle(
                        fontFamily: 'News Cycle',
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5 * fem,
                        color: Color(0x99ffffff),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x5a6cea)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      filled: true,
                      fillColor: Color(0x19ffffff),
                    ),
                  ),
                  SizedBox(
                    height: ffem * 11,
                  ),
                  TextField(
                    controller: porcionController,
                    style: TextStyle(
                      fontFamily: 'News Cycle',
                      fontSize: 18 * fem,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5 * fem,
                      color: Color(0xffffffff),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 12 * fem, horizontal: 16 * fem),
                      hintText: 'Porcion (g)',
                      hintStyle: TextStyle(
                        fontFamily: 'News Cycle',
                        fontSize: 18 * fem,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5 * fem,
                        color: Color(0x99ffffff),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x19f4f4f4)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0x5a6cea)),
                        borderRadius: BorderRadius.circular(15 * fem),
                      ),
                      filled: true,
                      fillColor: Color(0x19ffffff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup1dhhJcf (5HrPx6taktLcSckF5D1DHH)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
              width: double.infinity,
              height: 50 * fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    // botonaceptarqFD (27:505)
                    onPressed: () {
                      alimento.ing_alimento(
                        nombreController.text,
                        caloriasController.text,
                        proteinasController.text,
                        grasasController.text,
                        carbohidratosController.text,
                        azucaresController.text,
                        colesterolController.text,
                        sodioController.text,
                        porcionController.text,
                      );
                    },
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
                            constraints: BoxConstraints(
                              maxWidth: 146 * fem,
                            ),
                            child: Text(
                              'Aceptar',
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
                  TextButton(
                    // botonaceptarqFD (27:505)
                    onPressed: () {
                      MaterialPageRoute route = MaterialPageRoute(
                          builder: (context) => Registrar_consumo());
                      Navigator.push(context, route);
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
                            constraints: BoxConstraints(
                              maxWidth: 146 * fem,
                            ),
                            child: Text(
                              'Aceptar y registrar consumo',
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
                ],
              ),
            ),
            Container(
              // autogroup1dhhJcf (5HrPx6taktLcSckF5D1DHH)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
              width: double.infinity,
              height: 50 * fem,
              child: TextButton(
                // botonaceptarqFD (27:505)
                onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(
                      builder: (context) => Registro_de_alimento_compuesto());
                  Navigator.push(context, route);
                },
                style: TextButton.styleFrom(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                ),
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(1 * fem, 4 * fem, 1 * fem, 4 * fem),
                  width: double.infinity,
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
                        constraints: BoxConstraints(
                          maxWidth: 200 * fem,
                        ),
                        child: Text(
                          'Ir a registro de alimento compuesto',
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
