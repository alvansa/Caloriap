import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/controller/con_historial_de_usuario.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/caloriapp.dart';

class Historial_de_alimentos extends StatefulWidget {
  final List<dynamic>? email;

  //obtener emailusuario de email tipo Postgres
  String get emailUsuario => email![0][0];

  Historial_de_alimentos({Key? key, required this.email}) : super(key: key);
  Widget historial() {
    return Scaffold(
      body: Historial_de_alimentos(
        email: email,
      ),
    );
  }

  @override
  _Historial_de_alimentos createState() => _Historial_de_alimentos();
}

class _Historial_de_alimentos extends State<Historial_de_alimentos> {
  TextEditingController _dateController = TextEditingController();

  controllerHistorialDeUsuario hist_alimentos = controllerHistorialDeUsuario();

  List<List<dynamic>> historial = [];

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // entregahistorialTVq (10:6059)
        // Fondo de la imagen(patron de fondo)
        decoration: const BoxDecoration(
          color: Color(0xff0c0c0c),
          //borderRadius: BorderRadius.circular(20 * fem),
        ),
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(
              // patterntum (7:4417)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 375 * fem,
                  height: 812 * fem,
                  child: Image.asset(
                    'assets/page-1/images/pattern-d8s.png',
                    width: 375 * fem,
                    height: 812 * fem,
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  // autogroup5u6ftr3 (5HrNqYuoqFYZcf9tcX5u6F)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 53 * fem, 10 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Boton de salida
                      Container(
                        // salidapDu (10:6475)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 50 * fem, 31 * fem, 0 * fem),
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
                              'assets/page-1/images/salida.png',
                              width: 45 * fem,
                              height: 45 * fem,
                            ),
                          ),
                        ),
                      ),
                      //Titulo de la pagina
                      Container(
                        // historialdealimentacinsxs (25:72)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 30 * fem, 0 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 228 * fem,
                        ),
                        child: Text(
                          'Historial de alimentación',
                          style: SafeGoogleFont(
                            'ABeeZee',
                            fontSize: 36 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1825 * ffem / fem,
                            letterSpacing: 0.5 * fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Container de la pagina
                Container(
                  // autogrouppqkbKps (5HrNvxvTH5XwBVbbctPqkb)
                  margin: EdgeInsets.fromLTRB(
                      45 * fem, 0 * fem, 45.14 * fem, 40 * fem),
                  width: double.infinity,
                  height: 50 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                            hintStyle: TextStyle(color: Color(0xffffffff)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15 * fem),
                              borderSide: BorderSide(color: Color(0x19f4f4f4)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15 * fem),
                              borderSide: BorderSide(color: Color(0x115a6cea)),
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
                      //Boton de aceptar
                      ElevatedButton(
                        onPressed: () async {
                          //dar una fecha fija en caso de no seleccionar alguna
                          if (_dateController.text == '') {
                            _dateController.text =
                                DateTime.now().toString().substring(0, 10);
                          }
                          //Funcion para actualizar el historial al momento de apretar el boton
                          actualizar_lista(
                              _dateController.text, widget.emailUsuario);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff53e78b),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15 * fem),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 16 * fem, horizontal: 16 * fem),
                        ),
                        child: Text(
                          'Aceptar',
                          style: TextStyle(
                            fontFamily: 'ABeeZee',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3102272749 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //Container de la lista
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Nombre del Alimento',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Porciones',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Calorias consumidas',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: historial.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.fromLTRB(
                                15 * fem, 5 * fem, 15 * fem, 0 * fem),
                            padding: EdgeInsets.all(15 * fem),
                            decoration: BoxDecoration(
                              color: Color(
                                  0x19ffffff), // Cambia el color de fondo de cada elemento
                              borderRadius: BorderRadius.circular(
                                  10), // Agrega bordes redondeados
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Text(
                                    historial[index][0], // Nombre del alimento
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    historial[index][1], // Porciones
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    historial[index][2], // Porciones totales
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //Funcion que acutaliza la lista
  //Recibe el email de usuario y la fecha, el email se obtiene de la clase Caloriapp
  void actualizar_lista(String date, String email) async {
    List<List<dynamic>> historialData =
        await hist_alimentos.getHistorialUsuario(email, _dateController.text);
    setState(() {
      historial = historialData;
    });
  }
}
