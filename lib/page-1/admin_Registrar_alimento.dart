import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/componente/Text_field.dart';
import 'package:myapp/page-1/Registro_de_alimento_compuesto.dart';
import '../controller/con_reg_alimento.dart';
import '../page-1/admin_caloriapp.dart';

class admin_Registrar_alimento extends StatefulWidget {
  final List<dynamic>? datosUsuario;
  const admin_Registrar_alimento({super.key, required this.datosUsuario});

  @override
  State<admin_Registrar_alimento> createState() =>
      _admin_Registrar_alimentoState();

  Widget registrar_alimento() {
    return Scaffold(
      body: admin_Registrar_alimento(datosUsuario: datosUsuario),
    );
  }
}

class _admin_Registrar_alimentoState extends State<admin_Registrar_alimento> {
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

  //Registro_alimento_compuesto? reg_al_comp;

  void initState() {
    super.initState();
    // reg_al_comp =
    //     Registro_alimento_compuesto(datosUsuario: widget.datosUsuario!);
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
                      Container(
                        // ingresaralimentovco (6:4414)
                        margin: EdgeInsets.fromLTRB(
                            9 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Text(
                          'Ingresar alimento predeterminado',
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
                              controller: nombreController,
                              fem: fem,
                            ),
                            TextFieldsIngreso(
                              hintText: 'Calorias (kcal)',
                              controller: caloriasController,
                              fem: fem,
                            ),
                            TextFieldsIngreso(
                              hintText: 'Proteinas (g)',
                              controller: proteinasController,
                              fem: fem,
                            ),
                            TextFieldsIngreso(
                              hintText: 'Grasas totales (kcal)',
                              controller: grasasController,
                              fem: fem,
                            ),
                            TextFieldsIngreso(
                              hintText: 'H. de C. disp (g)',
                              controller: carbohidratosController,
                              fem: fem,
                            ),
                            TextFieldsIngreso(
                              hintText: 'Azucares (g)',
                              controller: azucaresController,
                              fem: fem,
                            ),
                            TextFieldsIngreso(
                              hintText: 'Colesterol (g)',
                              controller: colesterolController,
                              fem: fem,
                            ),
                            TextFieldsIngreso(
                              hintText: 'Sodio (g)',
                              controller: sodioController,
                              fem: fem,
                            ),
                            TextFieldsIngreso(
                              hintText: 'Porcion (g)',
                              controller: porcionController,
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
                            TextButton(
                              // botonaceptarqFD (27:505)
                              onPressed: () async {
                                final result =
                                    await alimento.ing_alimento_predeterminado(
                                        nombreController.text,
                                        caloriasController.text,
                                        proteinasController.text,
                                        grasasController.text,
                                        carbohidratosController.text,
                                        azucaresController.text,
                                        colesterolController.text,
                                        sodioController.text,
                                        porcionController.text);
                                if (result == true) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Exito"),
                                          content: Text(
                                              "Alimento registrado como predeterminado"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            admin_Caloriapp(
                                                                datos: widget
                                                                    .datosUsuario)), //Caloriapp el email y el tipo
                                                  );
                                                  ;
                                                },
                                                child: Text("Ok"))
                                          ],
                                        );
                                      });
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Error"),
                                          content: Text(
                                              "Alimento no pudo ser registrado"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            admin_Caloriapp(
                                                                datos: widget
                                                                    .datosUsuario)), //Caloriapp el email y el tipo
                                                  );
                                                },
                                                child: Text("Ok"))
                                          ],
                                        );
                                      });
                                }
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
                                //MaterialPageRoute route = MaterialPageRoute(
                                //  builder: (context) => Registrar_consumo(),
                                //);
                                //Navigator.push(context, route);
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
                            MaterialPageRoute route = MaterialPageRoute(
                              builder: (context) => Registro_alimento_compuesto(
                                  datosUsuario: widget.datosUsuario!),
                            );
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
