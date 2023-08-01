import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/componente/Text_field.dart';
import 'package:myapp/page-1/Registro_de_alimento_compuesto.dart';
import 'package:myapp/page-1/caloriapp.dart';
import '../controller/con_reg_alimento.dart';
import 'package:myapp/page-1/Registrar_consumo.dart';

class Registrar_alimento extends StatefulWidget {
  final List<dynamic>? datosUsuario;
  const Registrar_alimento({super.key, required this.datosUsuario});

  @override
  State<Registrar_alimento> createState() => _Registrar_alimentoState();

  Widget registrar_alimento() {
    return Scaffold(
      body: Registrar_alimento(datosUsuario: datosUsuario),
    );
  }
}

class _Registrar_alimentoState extends State<Registrar_alimento> {
  final nombreController = TextEditingController();
  final caloriasController = TextEditingController();
  final proteinasController = TextEditingController();
  final grasasController = TextEditingController();
  final carbohidratosController = TextEditingController();
  final azucaresController = TextEditingController();
  final colesterolController = TextEditingController();
  final sodioController = TextEditingController();
  final porcionController = TextEditingController();
  final tipoAlimentoController = TextEditingController();
  String tipoAlimento = '';
  List<dynamic> selectedType = [];

  con_reg_alimento alimento = con_reg_alimento();

  //Registro_alimento_compuesto? reg_al_comp;

  void initState() {
    super.initState();
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
                image: AssetImage('assets/page-1/images/fondo_oficial.png'),
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
                          'Ingresar alimento',
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
                            TextField(
                              // autotextfield1 (5HrPqz6taktLcSckF5D1DHH)
                              controller: tipoAlimentoController,
                              obscureText: false,
                              readOnly: true,
                              decoration: InputDecoration(
                                hintText: 'Tipo de alimento',
                                hintStyle: GoogleFonts.newsCycle(
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3102272034 * ffem / fem,
                                  color: Color(0xff8e8e8e),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  borderSide: BorderSide(
                                    color: Color(0xff8e8e8e),
                                    width: 1.5 * fem,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  borderSide: BorderSide(
                                    color: Color(0xff8e8e8e),
                                    width: 1.5 * fem,
                                  ),
                                ),
                                filled: true,
                                fillColor: Color(0xff0c0c0c),
                                contentPadding: EdgeInsets.fromLTRB(
                                    20 * fem, 15 * fem, 20 * fem, 15 * fem),
                              ),
                              style: GoogleFonts.newsCycle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3102272034 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                              onTap: () async {
                                selectedType = await _showTipoAlimento(context);
                                if (selectedType != null) {
                                  setState(() {
                                    tipoAlimento = selectedType[
                                        1]; // Update the selected type
                                  });
                                  tipoAlimentoController.text =
                                      tipoAlimento; // Update the text field
                                }
                              },
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
                                final nuevo_alimento_id =
                                    await alimento.ing_alimento(
                                        nombreController.text,
                                        caloriasController.text,
                                        proteinasController.text,
                                        grasasController.text,
                                        carbohidratosController.text,
                                        azucaresController.text,
                                        colesterolController.text,
                                        sodioController.text,
                                        porcionController.text,
                                        selectedType[0],
                                        widget.datosUsuario![0][0]);
                                if (nuevo_alimento_id != false) {
                                  //mostrar pop up exitoso y mandar a caloriapp
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Exito"),
                                          content: Text(
                                              "Se ha registrado el alimento"),
                                          actions: [
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context),
                                              child: Text("Aceptar"),
                                            ),
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
                              onPressed: () async {
                                print(
                                    'email del usuario: ${widget.datosUsuario![0][0]}');
                                //Ingresa el nuevo alimento a la BD
                                final nuevo_alimento_id =
                                    await alimento.ing_alimento(
                                        nombreController.text,
                                        caloriasController.text,
                                        proteinasController.text,
                                        grasasController.text,
                                        carbohidratosController.text,
                                        azucaresController.text,
                                        colesterolController.text,
                                        sodioController.text,
                                        porcionController.text,
                                        selectedType[0],
                                        widget.datosUsuario![0][0]);

                                final id_alimento = await alimento.id_alimento(
                                    nombreController.text,
                                    caloriasController.text,
                                    proteinasController.text,
                                    grasasController.text,
                                    carbohidratosController.text,
                                    azucaresController.text,
                                    colesterolController.text,
                                    sodioController.text,
                                    porcionController.text);
                                if (true) {
                                  //mandar a registrar consumo con el id del alimento
                                  MaterialPageRoute route = MaterialPageRoute(
                                      builder: (context) => Registrar_consumo(
                                          email_consumo: widget.datosUsuario![0]
                                              [0],
                                          id_alimento_consumo: id_alimento));
                                  Navigator.push(context, route);
                                }
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
                                        'Registrar consumo',
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

  Future<List<dynamic>> _showTipoAlimento(BuildContext context) async {
    List<dynamic> types = [];
    con_reg_alimento alimento = con_reg_alimento();

    types = await alimento.con_tipos_alimento();

    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Type'),
          content: Container(
            width: double.minPositive,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: types.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(types[index][1]),
                  onTap: () {
                    Navigator.pop(
                        context, types[index]); // Return selected type
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
