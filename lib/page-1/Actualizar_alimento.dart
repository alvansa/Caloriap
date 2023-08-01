import 'package:flutter/material.dart';
import 'package:myapp/componente/Text_field.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/caloriapp.dart';
import 'package:myapp/page-1/Registro_de_alimento_compuesto.dart';
import '../controller/con_actualizar_alimento.dart';

class Actualizar_alimento extends StatefulWidget {
  final String alimento_id;
  final List<dynamic>? datos;

  //constructor
  Actualizar_alimento(
      {Key? key, required this.alimento_id, required this.datos})
      : super(key: key);

  @override
  _Actualizar_alimentoState createState() => _Actualizar_alimentoState();

  Widget act_alimento() {
    return Scaffold(
      body: Actualizar_alimento(
        alimento_id: alimento_id,
        datos: datos,
      ),
    );
  }
}

class _Actualizar_alimentoState extends State<Actualizar_alimento> {
  con_actualizar_alimento con_alimento = con_actualizar_alimento();
  Registro_alimento_compuesto? reg_al_comp;

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
  @override
  void initState() {
    super.initState();

    cargarDatos();
  }

  void cargarDatos() async {
    List<dynamic>? datos =
        await con_alimento.cargar_datos(int.parse(widget.alimento_id));
    if (datos != null && datos.isNotEmpty) {
      setState(() {
        nombreController.text = datos[1].toString();
        caloriasController.text = datos[2].toString();
        azucaresController.text = datos[3].toString();
        proteinasController.text = datos[4].toString();
        sodioController.text = datos[5].toString();
        grasasController.text = datos[6].toString();
        carbohidratosController.text = datos[7].toString();
        colesterolController.text = datos[8].toString();
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
              decoration: const BoxDecoration(
                color: Color(0xff0c0c0c),
                image: DecorationImage(
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
                      'Actualizar Alimento',
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
                            controller: nombreController,
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Calorias (kcal)',
                            controller: caloriasController,
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Proteinas (g)',
                            controller: proteinasController,
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Grasas totales (kcal)',
                            controller: grasasController,
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'H. de C. disp (g)',
                            controller: carbohidratosController,
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Azucares (g)',
                            controller: azucaresController,
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Colesterol (g)',
                            controller: colesterolController,
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Sodio (g)',
                            controller: sodioController,
                            fem: fem),
                        TextFieldsIngreso(
                            hintText: 'Porcion (g)',
                            controller: porcionController,
                            fem: fem),
                        TextField(
                          // autotextfield1 (5HrPqz6taktLcSckF5D1DHH)
                          controller: tipoAlimentoController,
                          obscureText: false,
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: 'Tipo de alimento',
                            hintStyle: SafeGoogleFont(
                              'newsCycle',
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
                          style: SafeGoogleFont(
                            'newsCycle',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3102272034 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                          onTap: () async {
                            selectedType = await _showTipoAlimento(context);
                            if (selectedType != null) {
                              setState(() {
                                tipoAlimento =
                                    selectedType[1]; // Update the selected type
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
                            final result =
                                await con_alimento.actualizar_alimento(
                              widget.alimento_id,
                              nombreController.text,
                              caloriasController.text,
                              proteinasController.text,
                              grasasController.text,
                              carbohidratosController.text,
                              azucaresController.text,
                              colesterolController.text,
                              sodioController.text,
                              selectedType[0],
                              porcionController.text,
                            );
                            if (result == true) {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Exito"),
                                      content: Text(
                                          "Alimento actualizado correctamente"),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Caloriapp(
                                                        datos: widget
                                                            .datos)), //Caloriapp el email y el tipo
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
                                'Actualizar Alimento',
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
    );
  }

  Future<List<dynamic>> _showTipoAlimento(BuildContext context) async {
    List<dynamic> types = [];
    con_actualizar_alimento alimento = con_actualizar_alimento();

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
