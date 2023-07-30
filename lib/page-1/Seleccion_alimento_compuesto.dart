import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/Registrar_consumo_compuesto.dart';
import 'package:myapp/page-1/Actualizar_alimento.dart';
import 'package:myapp/componente/Text_field_vista.dart';

class Seleccion_de_alimento_comp extends StatefulWidget {
  final List<dynamic> datos_alimento;
  final List<dynamic>? email;

  //constructor de clase Seleccion_de_alimento_comp
  Seleccion_de_alimento_comp(
      {Key? key, required this.datos_alimento, required this.email})
      : super(key: key);

  Widget seleccion_comp() {
    return Scaffold(
      body: Seleccion_de_alimento_comp(
          datos_alimento: datos_alimento, email: email),
    );
  }

  @override
  State<Seleccion_de_alimento_comp> createState() =>
      _Seleccion_de_alimento_compState();
}

class _Seleccion_de_alimento_compState
    extends State<Seleccion_de_alimento_comp> {
  //Varibaes para los controladores de los textfield
  final nombreController = TextEditingController();
  final caloriasController = TextEditingController();
  final proteinasController = TextEditingController();
  final grasasController = TextEditingController();
  final carbohidratosController = TextEditingController();
  final azucaresController = TextEditingController();
  final colesterolController = TextEditingController();
  final sodioController = TextEditingController();
  final porcionController = TextEditingController();

  bool predeterminado = false;

  Actualizar_alimento? actualizar_alimento;

  void initState() {
    super.initState();
    // actualizar_alimento = Actualizar_alimento(
    //     alimento_id: widget.datos_alimento[0].toString(), datos: widget.email);
    print(widget.datos_alimento);
    cargarDatos();
  }

  void cargarDatos() {
    if (widget.datos_alimento[10] == true) {
      predeterminado = false;
    }
    if (widget.email![0][3] == 2) {
      predeterminado = true;
    }
    nombreController.text = widget.datos_alimento[1].toString();
    caloriasController.text = widget.datos_alimento[2].toString();
    azucaresController.text = widget.datos_alimento[3].toString();
    proteinasController.text = widget.datos_alimento[4].toString();
    sodioController.text = widget.datos_alimento[5].toString();
    grasasController.text = widget.datos_alimento[6].toString();
    carbohidratosController.text = widget.datos_alimento[7].toString();
    colesterolController.text = widget.datos_alimento[8].toString();
    porcionController.text = widget.datos_alimento[9].toString();
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
            decoration: const BoxDecoration(
              color: Color(0xff0c0c0c),
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
                          'Seleccionar alimento compuesto',
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
                            TextFieldVista(
                              hintText: 'Nombre',
                              controller: TextEditingController(
                                  text: nombreController.text),
                              fem: fem,
                            ),
                            TextFieldVista(
                              hintText: 'Calorias',
                              controller: TextEditingController(
                                  text: caloriasController.text),
                              fem: fem,
                            ),
                            TextFieldVista(
                              hintText: 'Proteinas',
                              controller: TextEditingController(
                                  text: proteinasController.text),
                              fem: fem,
                            ),
                            TextFieldVista(
                              hintText: 'Grasas totales',
                              controller: TextEditingController(
                                  text: grasasController.text),
                              fem: fem,
                            ),
                            TextFieldVista(
                              hintText: 'H. de C. disp',
                              controller: TextEditingController(
                                  text: carbohidratosController.text),
                              fem: fem,
                            ),
                            TextFieldVista(
                              hintText: 'Azucares',
                              controller: TextEditingController(
                                  text: azucaresController.text),
                              fem: fem,
                            ),
                            TextFieldVista(
                              hintText: 'Colesterol',
                              controller: TextEditingController(
                                  text: colesterolController.text),
                              fem: fem,
                            ),
                            TextFieldVista(
                              hintText: 'Sodio',
                              controller: TextEditingController(
                                  text: sodioController.text),
                              fem: fem,
                            ),
                            TextFieldVista(
                              hintText: 'Porcion',
                              controller: TextEditingController(
                                  text: porcionController.text),
                              fem: fem,
                            ),
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
                            Visibility(
                              visible: predeterminado,
                              child: TextButton(
                                onPressed: () {
                                  //Llevar a actualizar aliemento
                                  MaterialPageRoute route = MaterialPageRoute(
                                      builder: (context) =>
                                          actualizar_alimento!.act_alimento());
                                  Navigator.push(context, route);
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                ),
                                child: Container(
                                  width: 157,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    gradient: const LinearGradient(
                                      begin: Alignment(-1, -1.123),
                                      end: Alignment(1, 1.228),
                                      colors: <Color>[
                                        Color.fromRGBO(31, 197, 122, 1),
                                        Color.fromRGBO(31, 197, 122, 1),
                                      ],
                                      stops: <double>[0, 1],
                                    ),
                                  ),
                                  child: Center(
                                    // Centra el texto horizontal y verticalmente dentro del Container
                                    child: Text(
                                      'Actualizar Alimento',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffffffff),
                                      ),
                                      textAlign: TextAlign
                                          .center, // Centra el texto dentro del TextButton
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              // botonaceptarqFD (27:505)
                              onPressed: () {
                                print(widget.email![0]);
                                print(widget.email![0][0]);
                                //Llevar a registrar consumo con info de email y id_alimento
                                MaterialPageRoute route = MaterialPageRoute(
                                    builder: (context) =>
                                        Registrar_consumo_compuesto(
                                            email_consumo: widget.email![0][0],
                                            id_alimento_consumo:
                                                widget.datos_alimento[0]));
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
                                      Color.fromRGBO(31, 197, 122, 1),
                                      Color.fromRGBO(31, 197, 122, 1)
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
                                        'Registrar Consumo',
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
