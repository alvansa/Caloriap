import 'package:myapp/model/model_alimento_compuesto.dart';

import '../model/model_alimento.dart';

class con_busqueda_alimento {
  Future<List<List<dynamic>>> busqueda_alimentos_tipo(
      String nombre, String max_calorias, String email, int? id) async {
    model_alimento alimento1 = model_alimento();
    double max_calorias_float;
    if (max_calorias.isEmpty) {
      max_calorias_float = 99999;
    } else {
      max_calorias_float = double.parse(max_calorias);
    }
    return await alimento1.listar_alimentos(
        nombre, max_calorias_float, email, id);
  }

  Future<List<List<dynamic>>> busqueda_alimentos_compuesto(
      String nombre, String max_calorias, String email) async {
    model_alimento_compuesto alimento1 = model_alimento_compuesto();
    double max_calorias_float;
    if (max_calorias.isEmpty) {
      max_calorias_float = 99999;
    } else {
      max_calorias_float = double.parse(max_calorias);
    }
    return await alimento1.listar_alimentos(nombre, max_calorias_float, email);
  }

  Future<List<dynamic>> pedir_filtros_tipo() async {
    model_alimento alimento1 = model_alimento();

    List<dynamic> result = await alimento1.pedir_filtro_tipo();

    return result;
  }

  Future<List<dynamic>> pedir_filtros_restriccion() async {
    model_alimento alimento1 = model_alimento();

    List<dynamic> result = await alimento1.pedir_filtro_restriccion();

    return result!;
  }
}
