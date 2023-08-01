import 'package:flutter/material.dart';
import 'package:myapp/page-1/Seleccion_de_alimento.dart';
import 'package:myapp/page-1/Seleccion_alimento_compuesto.dart';
import 'package:myapp/utils.dart';
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
  final TextEditingController _caloriasController = TextEditingController();

  con_busqueda_alimento busqueda_alimentos = con_busqueda_alimento();
  Seleccion_de_alimento? seleccion;
  Seleccion_de_alimento_comp? seleccion_compuesto;

  List<List<dynamic>> Busqueda = [];

  List<List<dynamic>> BusquedaData_alimento_compuesto = [];
  List<List<dynamic>> BusquedaData_alimento = [];
  int _indiceTipo = -1;

  List<String> _opcionesTipo = [];
  String? _eleccionTipo = 'Tipo';

  List<int> _idTipo = [];

  void initState() {
    super.initState();
    cargarDatos();
    CargarTipo();
  }

  void cargarDatos() {
    print('Email al cargar datos al inicio ${widget.emailUsuario}');
    actualizar_lista('', '', widget.emailUsuario, -1);
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
                          if (_caloriasController.text == '') {
                            _caloriasController.text = '';
                          }
                          _indiceTipo = _opcionesTipo.indexOf(_eleccionTipo!);

                          //Funcion para actualizar el Busqueda al momento de apretar el boton
                          actualizar_lista(
                              _busquedaController.text,
                              _caloriasController.text,
                              widget.emailUsuario,
                              _indiceTipo);

                          // lista_id[index]
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
                //Container de los filtros
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Container de tipo de alimento
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 17, horizontal: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: PopupMenuButton<String>(
                          // Valor actualmente seleccionado
                          initialValue: _eleccionTipo,
                          onSelected: (String? nuevaOpcion) {
                            setState(() {
                              _eleccionTipo = nuevaOpcion;
                              int indice =
                                  _opcionesTipo.indexOf(_eleccionTipo!);
                            });
                          },
                          // Opciones del DropdownButton
                          itemBuilder: (BuildContext context) {
                            return _opcionesTipo.map((String opcion) {
                              return PopupMenuItem<String>(
                                value: opcion,
                                child: Text(
                                  opcion,
                                  style: TextStyle(
                                    fontFamily: 'ABeeZee',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3102272749 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              );
                            }).toList();
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Ajusta el radio del borde para redondear la lista
                          ),
                          color: Color.fromARGB(226, 49, 44, 44),
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              _eleccionTipo ?? '',
                              style: TextStyle(
                                fontFamily: 'ABeeZee',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3102272749 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Container de calorias max
                      Container(
                        width: 100 * fem,
                        height: 50 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: TextField(
                            controller: _caloriasController,
                            style: TextStyle(
                              fontFamily: 'News Cycle',
                              fontSize: 15 * fem,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.5 * fem,
                              color: Color(0xffffffff),
                            ),
                            decoration: InputDecoration(
                              hintText: 'Max kcal',
                              hintStyle: TextStyle(
                                fontFamily: 'News Cycle',
                                fontSize: 15 * fem,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.5 * fem,
                                color: Color(0x99ffffff),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0x19f4f4f4)),
                                borderRadius: BorderRadius.circular(10 * fem),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0x5a6cea)),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              filled: true,
                            )),
                      ),
                    ],
                  ),
                ),
                //Container de la lista
                Expanded(
                    child: Busqueda.isNotEmpty == true
                        ? ListView.builder(
                            itemCount: Busqueda.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.fromLTRB(
                                    10 * fem, 10 * fem, 15 * fem, 0 * fem),
                                decoration: BoxDecoration(
                                  color: Color(
                                      0x19ffffff), // Cambia el color de fondo de cada elemento
                                  borderRadius: BorderRadius.circular(
                                      10), // Agrega bordes redondeados
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                    //Si el alimento es compuesto mandar a la pagina de seleccion de alimento compuesto
                                    if (BusquedaData_alimento_compuesto
                                        .contains(Busqueda[index])) {
                                      seleccion_compuesto =
                                          Seleccion_de_alimento_comp(
                                              datos_alimento: Busqueda![index],
                                              email: widget.email);

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              seleccion_compuesto!
                                                  .seleccion_comp(),
                                        ),
                                      );
                                      //Sino mandar a la seleccion de alimento simple
                                    } else {
                                      setState(() {
                                        seleccion = Seleccion_de_alimento(
                                            datos_alimento: Busqueda![index],
                                            email: widget.email);
                                      });
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              seleccion!.seleccion(),
                                        ),
                                      );
                                    }
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
                                    Busqueda[index][1],
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
  void actualizar_lista(
      String busqueda, String max, String email, int id) async {
    List<List<dynamic>> BusquedaData_alimento = [];
    List<List<dynamic>> BusquedaData_alimento_compuesto = [];
    //Si se selecciona el la busqueda por tipo

    if (_indiceTipo != -1) {
      print('indice tipo $_indiceTipo');
      BusquedaData_alimento = await busqueda_alimentos.busqueda_alimentos_tipo(
          _busquedaController.text, max, email, id);
      BusquedaData_alimento_compuesto = [];
    } // Si se selecciona la busqueda por restriccion
    else {
      BusquedaData_alimento = await busqueda_alimentos.busqueda_alimentos_tipo(
          _busquedaController.text, max, email, id);
      BusquedaData_alimento_compuesto = await busqueda_alimentos
          .busqueda_alimentos_compuesto(_busquedaController.text, max, email);
    }

    setState(() {
      Busqueda = [];
      Busqueda.addAll(BusquedaData_alimento);
      Busqueda.addAll(BusquedaData_alimento_compuesto);
      //print('Busqueda de alimentos $BusquedaData_alimento');
      print('Busqueda de alimentos simples $BusquedaData_alimento');
    });
  }

  //Cargar la lista de tipos
  void CargarTipo() async {
    List<dynamic> listatipo = await busqueda_alimentos.pedir_filtros_tipo();

    List<int> id_tipo = [];
    List<String> tipo = [];

    for (int i = 0; i < listatipo.length; i++) {
      id_tipo.add(listatipo[i][0]);
      tipo.add(listatipo[i][1].toString());
    }
    setState(() {
      _opcionesTipo = tipo;
      _idTipo = id_tipo;
    });
  }
}
