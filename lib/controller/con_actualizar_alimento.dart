import '../model/model_alimento.dart';

class con_actualizar_alimento {
  Future<List<dynamic>?> nombre_alimento(String id_al) {
    final alimento = model_alimento();
    final id_al_int = int.parse(id_al);
    final reg_alimento = alimento.datos_alimento(id_al_int);

    return reg_alimento;
  }

  Future<bool> actualizar_alimento(
      String id_al,
      String nombre,
      String calorias,
      String azucares,
      String proteina,
      String sodio,
      String grasa_total,
      String h_de_c,
      String colesterol,
      String porcion) async {
    final alimento = model_alimento();
    final id_al_int = int.parse(id_al);
    double calorias_int = 0;
    double proteinas_int = 0;
    double grasas_totales_int = 0;
    double hidratos_carbono_int = 0;
    double azucares_int = 0;
    double colesterol_int = 0;
    double sodio_int = 0;
    double porcion_int = 0;
    if (calorias.isNotEmpty) calorias_int = double.parse(calorias);
    if (proteina.isNotEmpty) proteinas_int = double.parse(proteina);
    if (grasa_total.isNotEmpty) grasas_totales_int = double.parse(grasa_total);
    if (h_de_c.isNotEmpty) hidratos_carbono_int = double.parse(h_de_c);
    if (azucares.isNotEmpty) azucares_int = double.parse(azucares);
    if (colesterol.isNotEmpty) colesterol_int = double.parse(colesterol);
    if (sodio.isNotEmpty) sodio_int = double.parse(sodio);
    if (porcion.isNotEmpty) porcion_int = double.parse(porcion);
    final act_alimento = alimento.actualizar_alimento(
        id_al_int,
        nombre,
        calorias_int,
        azucares_int,
        proteinas_int,
        sodio_int,
        grasas_totales_int,
        hidratos_carbono_int,
        colesterol_int,
        porcion_int);

    return act_alimento;
  }

  List<dynamic> cargar_datos(int id_al) {
    final alimento = model_alimento();
    final nombre_alimento = alimento.datos_alimento(id_al);
    List<dynamic> datos = [];
    nombre_alimento.then((value) => datos = value!);
    print(datos);
    return datos;
  }
}
