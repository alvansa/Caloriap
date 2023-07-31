import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/controller/con_reg_consumo.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/componente/Text_field.dart';

class Registrar_consumo extends StatefulWidget {
  final String email_consumo;
  final int id_alimento_consumo;

  const Registrar_consumo(
      {Key? key,
      required this.email_consumo,
      required this.id_alimento_consumo})
      : super(key: key);

  @override
  State<Registrar_consumo> createState() => _Registrar_consumoState();

  Widget registrar_consumo() {
    return Scaffold(
      body: Registrar_consumo(
          email_consumo: email_consumo,
          id_alimento_consumo: id_alimento_consumo),
    );
  }
}

class _Registrar_consumoState extends State<Registrar_consumo> {
  final porcionController = TextEditingController();
  final _dateController = TextEditingController();

  con_reg_consumo reg_consumo1 = con_reg_consumo();

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
                  // registroconsumo (1:1)
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
                        // boton de salida (10:6471)
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
                        // registrar consumo (1:2)
                        margin: EdgeInsets.fromLTRB(
                            9 * fem, 0 * fem, 0 * fem, 16 * fem),
                        child: Text(
                          'Registrar Consumo',
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
                              hintText: 'Porción (g)',
                              controller: porcionController,
                              fem: fem,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogrouppqkbKps (5HrNvxvTH5XwBVbbctPqkb)
                        margin: EdgeInsets.fromLTRB(
                            45 * fem, 10 * fem, 45.14 * fem, 40 * fem),
                        width: double.infinity,
                        height: 50 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //container de texto "Fecha:"
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: 40 * fem,
                              height: double.infinity,
                              child: Text(
                                'Fecha:',
                                textAlign: TextAlign.left,
                                style: GoogleFonts.newsCycle(
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1825 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            //Container de la fecha a introducir
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 26 * fem, 0 * fem),
                              width: 167 * fem,
                              height: double.infinity,
                              child: TextField(
                                readOnly: true,
                                controller: _dateController,
                                decoration: InputDecoration(
                                  hintText: 'DD/MM/AAAA',
                                  hintStyle:
                                      TextStyle(color: Color(0xffffffff)),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(15 * fem),
                                    borderSide:
                                        BorderSide(color: Color(0x19f4f4f4)),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(15 * fem),
                                    borderSide:
                                        BorderSide(color: Color(0x115a6cea)),
                                  ),
                                  filled: true,
                                  fillColor: Color(0x19ffffff),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 16 * fem, horizontal: 16 * fem),
                                ),
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.1825 * ffem / fem,
                                  letterSpacing: 0.5 * fem,
                                ),
                                onTap: () async {
                                  DateTime? date = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100),
                                  );

                                  _dateController.text =
                                      date.toString().substring(0, 10);
                                },
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
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextButton(
                              // botonaceptarqFD (27:505)
                              onPressed: () async {
                                final result = await (reg_consumo1.ing_consumo(
                                    widget.email_consumo.toString(),
                                    _dateController.text,
                                    widget.id_alimento_consumo,
                                    porcionController.text));
                                if (result == true) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Exito"),
                                          content: Text(
                                              "Se ha registrado el consumo"),
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
                                width: 320 * fem,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15 * fem),
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
                                  // registraralimentocompuestoW6T (27:508
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
