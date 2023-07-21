import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/componente/Text_field.dart';
import 'package:myapp/page-1/Registrar_consumo.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Caloriapp.dart';
import 'package:myapp/page-1/Registro_de_alimento_compuesto.dart';
import '../controller/con_actualizar_alimento.dart';

class Actualizar_alimento extends StatefulWidget {
  final String alimento_id;

  //constructor
  Actualizar_alimento({Key? key, required this.alimento_id}) : super(key: key);

  @override
  _Actualizar_alimentoState createState() => _Actualizar_alimentoState();
}

class _Actualizar_alimentoState extends State<Actualizar_alimento> {
  con_actualizar_alimento alimento = con_actualizar_alimento();

  final nombreController = TextEditingController();
  final caloriasController = TextEditingController();
  final proteinasController = TextEditingController();
  final grasasController = TextEditingController();
  final carbohidratosController = TextEditingController();
  final azucaresController = TextEditingController();
  final colesterolController = TextEditingController();
  final sodioController = TextEditingController();
  final porcionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    cargarDatos();
  }

  void cargarDatos() async {
    List<dynamic>? datos =
        await alimento.cargar_datos(int.parse(widget.alimento_id));
    if (datos != null && datos.isNotEmpty) {
      setState(() {
        nombreController.text = datos[1].toString();
        caloriasController.text = datos[2].toString();
        proteinasController.text = datos[4].toString();
        grasasController.text = datos[6].toString();
        carbohidratosController.text = datos[7].toString();
        azucaresController.text = datos[3].toString();
        colesterolController.text = datos[8].toString();
        sodioController.text = datos[5].toString();
        porcionController.text = datos[9].toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Container(
              // registrodealimentoALo (6:3986)
              padding:
                  EdgeInsets.fromLTRB(24 * fem, 0 * fem, 25 * fem, 0 * fem),
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
                            //ingresar los datos pedidos
                            controller: TextEditingController(
                                text: nombreController.text),
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Calorias (kcal)',
                            controller: TextEditingController(
                                text: caloriasController.text),
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Proteinas (g)',
                            controller: TextEditingController(
                                text: proteinasController.text),
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Grasas totales (kcal)',
                            controller: TextEditingController(
                                text: grasasController.text),
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'H. de C. disp (g)',
                            controller: TextEditingController(
                                text: carbohidratosController.text),
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Azucares (g)',
                            controller: TextEditingController(
                                text: azucaresController.text),
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Colesterol (g)',
                            controller: TextEditingController(
                                text: colesterolController.text),
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Sodio (g)',
                            controller: TextEditingController(
                                text: sodioController.text),
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Porcion (g)',
                            controller: TextEditingController(
                                text: porcionController.text),
                            fem: fem),
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
                          onPressed: () {
                            alimento.actualizar_alimento(
                              widget.alimento_id,
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
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 10 * fem),
                    width: double.infinity,
                    height: 50 * fem,
                    child: TextButton(
                      // botonaceptarqFD (27:505)
                      onPressed: () {
                        MaterialPageRoute route = MaterialPageRoute(
                            builder: (context) =>
                                Registro_de_alimento_compuesto());
                        Navigator.push(context, route);
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
                  // Otros widgets y botones aquí...
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
