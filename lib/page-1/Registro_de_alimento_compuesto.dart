import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/componente/Text_field.dart';
import 'package:myapp/page-1/Agregar_alimentos_al_compuesto.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/caloriapp.dart';
import 'package:myapp/controller/con_reg_al_comp.dart';

class Registro_alimento_compuesto extends StatefulWidget {
  final List<dynamic>? datosUsuario;
  //Constructor de alimento compuesto
  const Registro_alimento_compuesto({super.key, required this.datosUsuario});

  @override
  State<Registro_alimento_compuesto> createState() =>
      _Registro_alimento_compuestoState();
}

class _Registro_alimento_compuestoState
    extends State<Registro_alimento_compuesto> {
  //Variables
  final nombreController = TextEditingController();
  Agregar_alimentos? nuevos_alimentos;
  List<List<dynamic>>? Busqueda = [];
  List datos_al_comp = [];
  List nombres = [];
  con_reg_al_comp reg_al_comp = con_reg_al_comp();

  void initState() {
    super.initState();
    print('Datos que recibe registrar al_comp ${widget.datosUsuario}');
    nuevos_alimentos = Agregar_alimentos(email: widget.datosUsuario);
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
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFieldsIngreso(
                                hintText: 'Nombre alimento compuesto',
                                controller: nombreController,
                                fem: fem),
                            //TextButton de Agregar Alimentos
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15 * fem),
                                  color: Color(0xFF26Ca7D),
                                ),
                                width: 200 * fem,
                                child: TextButton(
                                  onPressed: () async {
                                    if (nombreController.text.isNotEmpty) {
                                      //Al momomento de apretar este boton se guarda el nombre del alimento compuesto
                                      int id_al_comp =
                                          await reg_al_comp.reg_nombre(
                                              nombreController.text,
                                              widget.datosUsuario![0][0]);
                                      //y se pasa a la pagina de agregar alimentos
                                      List datos_recibidos =
                                          await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              nuevos_alimentos!.agregar(),
                                        ),
                                      );
                                      if (datos_recibidos.isNotEmpty) {
                                        cargar_lista_alimentos(
                                            datos_recibidos[2]);
                                        datos_al_comp = datos_recibidos;
                                        print(datos_al_comp);

                                        reg_al_comp.reg_datos(id_al_comp,
                                            datos_al_comp[0], datos_al_comp[1]);
                                        reg_al_comp.reg_valor_nutricional(
                                            id_al_comp,
                                            datos_al_comp[0],
                                            datos_al_comp[1]);
                                      }
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text("Error"),
                                              content: Text(
                                                  "No se ha ingresado el nombre del alimento compuesto"),
                                              actions: [
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text("Ok"))
                                              ],
                                            );
                                          });
                                    }
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.fromLTRB(
                                        0 * fem, 15 * fem, 0 * fem, 15 * fem),
                                  ),
                                  child: const Text(
                                    'Agregar Alimentos',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            // Container de Alimentos agregados
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 10 * fem, 0 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  0 * fem,
                                  0 * fem,
                                  0 * fem,
                                  0 * fem), // Agrega padding para espaciar el contenido
                              child: Text(
                                'Alimentos agregados:',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.newsCycle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3102272034,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200, // Ajusta la altura según tus necesidades
                        child: datos_al_comp.isNotEmpty
                            ? ListView.builder(
                                itemCount: datos_al_comp[2]!.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                    color: Color(
                                        0x19ffffff), // Color de fondo gris
                                    child: ListTile(
                                      title: Text(
                                        datos_al_comp[2]![index],
                                        style: TextStyle(
                                            color: Colors
                                                .white), // Color de letra blanca
                                      ),
                                      subtitle: Text(
                                        datos_al_comp[1]![index].toString(),
                                        style: TextStyle(
                                            color: Colors
                                                .white), // Color de letra blanca
                                      ),
                                    ),
                                  );
                                },
                              )
                            : const Center(
                                child: Text(
                                  'No se han agregado alimentos',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                      ),
                      //Botones
                      Container(
                        // autogroup1dhhJcf (5HrPx6taktLcSckF5D1DHH)
                        width: double.infinity,
                        height: 50 * fem,
                        child: Center(
                          child: TextButton(
                            // botonaceptarqFD (27:505)
                            onPressed: () {
                              if (datos_al_comp.isNotEmpty) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("Exito"),
                                        content: Text(
                                            "Alimento compuesto registrado"),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          Caloriapp(
                                                              datos: widget
                                                                  .datosUsuario)), //Caloriapp el email y el tipo
                                                );
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
                                            "No se ha registrado ningun alimento"),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
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
                              width: 200 * fem,
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

  void cargar_lista_alimentos(List alimentos) {
    setState(() {
      nombres = alimentos;
    });
  }
}
