import '../model/model_alimento.dart';

class con_reg_alimento {
  Future<List<dynamic>> con_tipos_alimento() async {
    model_alimento alimento1 = model_alimento();
    Future<List<dynamic>> tipos_alimento = alimento1.pedir_filtro_tipo();
    return tipos_alimento;
  }

  Future<List<dynamic>?> con_datos_alimento(String id) async {
    model_alimento alimento1 = model_alimento();
    int id_int = id.isNotEmpty ? int.parse(id) : 0;

    Future<List<dynamic>?> alimento = alimento1.datos_alimento(id_int);
    return alimento;
  }

  Future<bool> ing_alimento(
      String nombre,
      String calorias,
      String proteinas,
      String grasas_totales,
      String hidratos_carbono,
      String azucares,
      String colesterol,
      String sodio,
      String porcion,
      int tipo,
      String email) async {
    model_alimento reg_alimento1 = model_alimento();
    double calorias_int = 0;
    double proteinas_int = 0;
    double grasas_totales_int = 0;
    double hidratos_carbono_int = 0;
    double azucares_int = 0;
    double colesterol_int = 0;
    double sodio_int = 0;
    double porcion_int = 0;
    if (calorias.isNotEmpty) calorias_int = double.parse(calorias);
    if (proteinas.isNotEmpty) proteinas_int = double.parse(proteinas);
    if (grasas_totales.isNotEmpty)
      grasas_totales_int = double.parse(grasas_totales);
    if (hidratos_carbono.isNotEmpty)
      hidratos_carbono_int = double.parse(hidratos_carbono);
    if (azucares.isNotEmpty) azucares_int = double.parse(azucares);
    if (colesterol.isNotEmpty) colesterol_int = double.parse(colesterol);
    if (sodio.isNotEmpty) sodio_int = double.parse(sodio);
    if (porcion.isNotEmpty) porcion_int = double.parse(porcion);

    return reg_alimento1.reg_alimento(
        nombre,
        calorias_int,
        proteinas_int,
        grasas_totales_int,
        hidratos_carbono_int,
        azucares_int,
        colesterol_int,
        sodio_int,
        porcion_int,
        tipo,
        email);
  }

  Future<bool> ing_alimento_predeterminado(
      String nombre,
      String calorias,
      String proteinas,
      String grasas_totales,
      String hidratos_carbono,
      String azucares,
      String colesterol,
      String sodio,
      String porcion) async {
    model_alimento reg_alimento1 = model_alimento();
    double calorias_int = 0;
    double proteinas_int = 0;
    double grasas_totales_int = 0;
    double hidratos_carbono_int = 0;
    double azucares_int = 0;
    double colesterol_int = 0;
    double sodio_int = 0;
    double porcion_int = 0;
    if (calorias.isNotEmpty) calorias_int = double.parse(calorias);
    if (proteinas.isNotEmpty) proteinas_int = double.parse(proteinas);
    if (grasas_totales.isNotEmpty)
      grasas_totales_int = double.parse(grasas_totales);
    if (hidratos_carbono.isNotEmpty)
      hidratos_carbono_int = double.parse(hidratos_carbono);
    if (azucares.isNotEmpty) azucares_int = double.parse(azucares);
    if (colesterol.isNotEmpty) colesterol_int = double.parse(colesterol);
    if (sodio.isNotEmpty) sodio_int = double.parse(sodio);
    if (porcion.isNotEmpty) porcion_int = double.parse(porcion);

    return await reg_alimento1.reg_alimento_predeterminado(
        nombre,
        calorias_int,
        proteinas_int,
        grasas_totales_int,
        hidratos_carbono_int,
        azucares_int,
        colesterol_int,
        sodio_int,
        porcion_int);
  }

  Future<int> id_alimento(
      String nombre,
      String calorias,
      String proteinas,
      String grasas_totales,
      String hidratos_carbono,
      String azucares,
      String colesterol,
      String sodio,
      String porcion) async {
    model_alimento reg_alimento1 = model_alimento();
    double calorias_int = 0;
    double proteinas_int = 0;
    double grasas_totales_int = 0;
    double hidratos_carbono_int = 0;
    double azucares_int = 0;
    double colesterol_int = 0;
    double sodio_int = 0;
    double porcion_int = 0;
    if (calorias.isNotEmpty) calorias_int = double.parse(calorias);
    if (proteinas.isNotEmpty) proteinas_int = double.parse(proteinas);
    if (grasas_totales.isNotEmpty)
      grasas_totales_int = double.parse(grasas_totales);
    if (hidratos_carbono.isNotEmpty)
      hidratos_carbono_int = double.parse(hidratos_carbono);
    if (azucares.isNotEmpty) azucares_int = double.parse(azucares);
    if (colesterol.isNotEmpty) colesterol_int = double.parse(colesterol);
    if (sodio.isNotEmpty) sodio_int = double.parse(sodio);
    if (porcion.isNotEmpty) porcion_int = double.parse(porcion);
    final result = await reg_alimento1.id_alimento(
        nombre,
        calorias_int,
        proteinas_int,
        grasas_totales_int,
        hidratos_carbono_int,
        azucares_int,
        colesterol_int,
        sodio_int,
        porcion_int);
    //transformar el result en un entero int
    int id = result.first.first;
    return id;
  }
}
