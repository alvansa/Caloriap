import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Busqueda_de_alimentos.dart';
import 'package:myapp/page-1/Entrega_de_historial_de_alimentos.dart';
import 'package:myapp/page-1/Registrar_alimento.dart';
import 'package:myapp/page-1/iniciar_sesion.dart';

class Caloriapp extends StatefulWidget {
  final List<dynamic>? datos;

  Caloriapp({Key? key, required this.datos}) : super(key: key);
  @override
  _CaloriapState createState() => _CaloriapState();
}

class _CaloriapState extends State<Caloriapp> {
  Historial_de_alimentos? h_de_alimentos;
  Busqueda_de_alimentos? b_de_alimentos;
  void initState() {
    super.initState();
    h_de_alimentos = Historial_de_alimentos(email: widget.datos);
    b_de_alimentos = Busqueda_de_alimentos(email: widget.datos);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // caloriappcBZ (7:4416)
        width: double.infinity,
        height: 812 * fem,
        decoration: BoxDecoration(
          color: Color(0xff0c0c0c),
        ),
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
                    'assets/page-1/images/fondo_oficial.png',
                    width: 375 * fem,
                    height: 812 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // ctabuttonanb (7:5233)
              left: 112 * fem,
              top: 550 * fem,
              child: TextButton(
                onPressed: () {
                  MaterialPageRoute route =
                      MaterialPageRoute(builder: (context) => sesion());
                  Navigator.push(context, route);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 163 * fem,
                  height: 57 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15 * fem),
                    gradient: const LinearGradient(
                      begin: Alignment(-1, -1.123),
                      end: Alignment(1, 1.228),
                      colors: <Color>[Color(0xffda2525), Color(0xff04ff95)],
                      stops: <double>[0.988, 0.989],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Salir',
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
            Positioned(
              // ctabuttonkKh (7:5230)
              left: 112 * fem,
              top: 470 * fem,
              child: TextButton(
                onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(
                      builder: (context) =>
                          Registrar_alimento(datosUsuario: widget.datos!));
                  Navigator.push(context, route);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(46 * fem, 8 * fem, 44 * fem, 7 * fem),
                  width: 163 * fem,
                  height: 57 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15 * fem),
                    gradient: const LinearGradient(
                      begin: Alignment(-1, -1.123),
                      end: Alignment(1, 1.228),
                      colors: <Color>[Color(0xff53e78b), Color(0xff14be77)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Center(
                    // registraralimentoAPR (7:5232)
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 73 * fem,
                        ),
                        child: Text(
                          'Registrar alimento',
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
            Positioned(
              // ctabutton4Du (7:5224)
              left: 112 * fem,
              top: 380 * fem,
              child: TextButton(
                onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(
                      builder: (context) => h_de_alimentos!.historial());
                  Navigator.push(context, route);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 170 * fem,
                  height: 57 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15 * fem),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle16GKy (7:5225)
                        left: 0 * fem,
                        top: 0 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 162.85 * fem,
                            height: 57 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15 * fem),
                                gradient: const LinearGradient(
                                  begin: Alignment(-1, -1.123),
                                  end: Alignment(1, 1.228),
                                  colors: <Color>[
                                    Color(0xff53e78b),
                                    Color(0xff14be77)
                                  ],
                                  stops: <double>[0, 1],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // historialdeconsumoixf (7:5226)
                        left: 3 * fem,
                        top: 20 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 161 * fem,
                            height: 21 * fem,
                            child: Text(
                              'Historial de consumo',
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
              ),
            ),
            Positioned(
              // ctabuttonCcw (7:5217)
              left: 112 * fem,
              top: 300 * fem,
              child: TextButton(
                onPressed: () {
                  MaterialPageRoute route = MaterialPageRoute(
                      builder: (context) => b_de_alimentos!.busqueda());
                  Navigator.push(context, route);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 163 * fem,
                  height: 57 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15 * fem),
                    gradient: const LinearGradient(
                      begin: Alignment(-1, -1.123),
                      end: Alignment(1, 1.228),
                      colors: <Color>[Color(0xff53e78b), Color(0xff14be77)],
                      stops: <double>[0, 1],
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Búsqueda',
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
            Positioned(
              // logonombre1QDD (7:5200)
              left: 9 * fem,
              top: 43 * fem,
              child: Align(
                child: SizedBox(
                  width: 356 * fem,
                  height: 239 * fem,
                  child: Image.asset(
                    'assets/page-1/images/logonombre-1-EEb.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
