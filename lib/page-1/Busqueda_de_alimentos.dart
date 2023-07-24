import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/Seleccion_de_alimento.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Caloriapp.dart';
import 'package:myapp/controller/con_busqueda_alimento.dart';

class Busqueda_de_alimentos extends StatefulWidget {
  final List<dynamic>? email;

  //obtener emailusuario de email tipo Postgres
  String get emailUsuario => email![0][0];

  Busqueda_de_alimentos({Key? key, required this.email}) : super(key: key);
  Widget busqueda() {
    return Scaffold(
      body: Busqueda_de_alimentos(
        email: email,
      ),
    );
  }

  @override
  _Busqueda_de_alimentos createState() => _Busqueda_de_alimentos();
}

class _Busqueda_de_alimentos extends State<Busqueda_de_alimentos> {
  final TextEditingController _busquedaController = TextEditingController();

  con_busqueda_alimento busqueda_alimentos = con_busqueda_alimento();
  Seleccion_de_alimento? seleccion;

  List<List<dynamic>>? Busqueda = [];

  void initState() {
    super.initState();
    cargarDatos();
  }

  void cargarDatos() {
    actualizar_lista(widget.emailUsuario, '', '');
    // seleccion = Seleccion_de_alimento(
    //     datos_alimento: Busqueda![0], email: widget.emailUsuario);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // entregaBusquedaTVq (10:6059)
        // Fondo de la imagen(patron de fondo)
        decoration: const BoxDecoration(
          color: Color(0xff0c0c0c),
          //borderRadius: BorderRadius.circular(20 * fem),
        ),
        width: double.infinity,
        child: Stack(
          children: [
            // Patron de fondo
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
                        // Busquedadealimentacinsxs (25:72)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 30 * fem, 0 * fem, 0 * fem),
                        constraints: BoxConstraints(
                          maxWidth: 228 * fem,
                        ),
                        child: Text(
                          'Busqueda de alimentos',
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
                      45 * fem, 0 * fem, 45.14 * fem, 0 * fem),
                  width: double.infinity,
                  height: 50 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Container de la busqueda a introducir
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 26 * fem, 0 * fem),
                        width: 175 * fem,
                        height: double.infinity,
                        child: TextField(
                          controller: _busquedaController,
                          decoration: InputDecoration(
                            hintText: 'Busqueda',
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
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.1825 * ffem / fem,
                            letterSpacing: 0.5 * fem,
                          ),
                        ),
                      ),
                      //Boton de aceptar
                      ElevatedButton(
                        onPressed: () async {
                          if (_busquedaController.text == '') {
                            _busquedaController.text = '';
                          }
                          //Funcion para actualizar el Busqueda al momento de apretar el boton
                          actualizar_lista(_busquedaController.text,
                              widget.emailUsuario, '');
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
                          'Buscar',
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
                    child: Busqueda!.isNotEmpty == true
                        ? ListView.builder(
                            itemCount: Busqueda!.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.fromLTRB(
                                    10 * fem, 20 * fem, 15 * fem, 0 * fem),
                                decoration: BoxDecoration(
                                  color: Color(
                                      0x19ffffff), // Cambia el color de fondo de cada elemento
                                  borderRadius: BorderRadius.circular(
                                      10), // Agrega bordes redondeados
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      seleccion = Seleccion_de_alimento(
                                          datos_alimento: Busqueda![index],
                                          email: widget.emailUsuario);
                                    });
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => seleccion!.seleccion(
                                            // datos_alimento: Busqueda![index],
                                            // email: widget.email![0][0],
                                            ),
                                      ),
                                    );
                                    // Acción a realizar al presionar el botón
                                    print(
                                        'Presionaste: ${Busqueda![index][1]}');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors
                                        .transparent, // Color de fondo transparente
                                    elevation: 0,
                                    padding: EdgeInsets.fromLTRB(
                                        10 * fem,
                                        20 * fem,
                                        15 * fem,
                                        20 * fem), // Sin sombra
                                  ),
                                  child: Text(
                                    Busqueda?[index][1],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              );
                            },
                          )
                        //En caso de que no se encuentren resultados
                        : const Center(
                            child: Text(
                              'No se encontraron resultados que coincidan con la busqueda',
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //Funcion que acutaliza la lista
  //Recibe el email de usuario y la fecha, el email se obtiene de la clase Caloriapp
  void actualizar_lista(String email, String busqueda, String max) async {
    List<List<dynamic>>? BusquedaData = await busqueda_alimentos
        .busqueda_alimentos(_busquedaController.text, max, email);
    //print(BusquedaData);
    setState(() {
      Busqueda = BusquedaData;
    });
  }
}
