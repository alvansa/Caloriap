import 'package:myapp/model/model_alimento_compuesto.dart';

import '../model/model_alimento.dart';

class con_busqueda_alimento {
  Future<List<List<dynamic>>> busqueda_alimentos(
      String nombre, String max_calorias, String email) async {
    model_alimento alimento1 = model_alimento();
    double max_calorias_float;
    if (max_calorias.isEmpty) {
      max_calorias_float = 99999;
    } else {
      max_calorias_float = double.parse(max_calorias);
    }
    return await alimento1.listar_alimentos(nombre, max_calorias_float, email);
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
}
