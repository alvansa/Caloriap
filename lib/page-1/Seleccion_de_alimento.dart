import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/Registrar_consumo.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/caloriapp.dart';
import 'package:myapp/page-1/Actualizar_alimento.dart';
import 'package:myapp/componente/Text_field.dart';

class Seleccion_de_alimento extends StatefulWidget {
  final List<dynamic> datos_alimento;
  final String email;

  //constructor de clase Seleccion_de_alimento
  Seleccion_de_alimento(
      {Key? key, required this.datos_alimento, required this.email})
      : super(key: key);

  Widget seleccion() {
    return Scaffold(
      body: Seleccion_de_alimento(datos_alimento: datos_alimento, email: email),
    );
  }

  @override
  State<Seleccion_de_alimento> createState() => _Seleccion_de_alimentoState();
}

class _Seleccion_de_alimentoState extends State<Seleccion_de_alimento> {
  final nombreController = TextEditingController();

  void cargarDatos() {
    nombreController.text = widget.datos_alimento[1].toString();
  }

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
            decoration: BoxDecoration(
              color: Color(0xff0c0c0c),
              borderRadius: BorderRadius.circular(20 * fem),
              image: const DecorationImage(
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
                      Container(
                        // ingresaralimentovco (6:4414)
                        margin: EdgeInsets.fromLTRB(
                            9 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Text(
                          'Actualizar alimento',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.newsCycle(
                            fontSize: 25 * ffem,
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
                          children: [
                            TextFieldsIngreso(
                              hintText: 'Nombre',
                              controller: TextEditingController(
                                  text: widget.datos_alimento[1].toString()),
                              fem: fem,
                            ),
                            // TextFieldsIngreso(
                            //   hintText: 'Calorias (kcal)',
                            //   controller: caloriasController,
                            //   fem: fem,
                            // ),
                            // TextFieldsIngreso(
                            //   hintText: 'Proteinas (g)',
                            //   controller: proteinasController,
                            //   fem: fem,
                            // ),
                            // TextFieldsIngreso(
                            //   hintText: 'Grasas totales (kcal)',
                            //   controller: grasasController,
                            //   fem: fem,
                            // ),
                            // TextFieldsIngreso(
                            //   hintText: 'H. de C. disp (g)',
                            //   controller: carbohidratosController,
                            //   fem: fem,
                            // ),
                            // TextFieldsIngreso(
                            //   hintText: 'Azucares (g)',
                            //   controller: azucaresController,
                            //   fem: fem,
                            // ),
                            // TextFieldsIngreso(
                            //   hintText: 'Colesterol (g)',
                            //   controller: colesterolController,
                            //   fem: fem,
                            // ),
                            // TextFieldsIngreso(
                            //   hintText: 'Sodio (g)',
                            //   controller: sodioController,
                            //   fem: fem,
                            // ),
                            // TextFieldsIngreso(
                            //   hintText: 'Porcion (g)',
                            //   controller: porcionController,
                            //   fem: fem,
                            // ),
                          ],
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
                                MaterialPageRoute route = MaterialPageRoute(
                                  builder: (context) => Registrar_consumo(),
                                );
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
                      Container(
                        // autogroup1dhhJcf (5HrPx6taktLcSckF5D1DHH)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 10 * fem),
                        width: double.infinity,
                        height: 50 * fem,
                        child: TextButton(
                          // botonaceptarqFD (27:505)
                          onPressed: () {
                            // MaterialPageRoute route = MaterialPageRoute(
                            //   builder: (context) =>
                            //       Registro_de_alimento_compuesto(),
                            // );
                            // Navigator.push(context, route);
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                1 * fem, 4 * fem, 1 * fem, 4 * fem),
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
                                  constraints:
                                      BoxConstraints(maxWidth: 200 * fem),
                                  child: Text(
                                    'Ir a registro de alimento compuesto',
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
                      ),
                      // Otros widgets y botones aquí...
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
