import '../model/model_alimento.dart';
import '../model/model_alimento_compuesto.dart';

class con_reg_al_comp {
  //Registas el nombre del alimento compuesto y obtienes una id
  Future<int> reg_nombre(String nombre) async {
    final alimento_compuesto = model_alimento_compuesto();
    final id = alimento_compuesto.reg_al_comp_nombre(nombre);
    print('Controller: id del alimento a ingresar $id');
    return id;
  }

  //Registras los alimentos que lo componen y sus porciones
  Future<bool> reg_datos(int id_al_comp, List alimentos, List porciones) async {
    final alimento_compuesto = model_alimento_compuesto();
    final alimento = model_alimento();

    for (int i = 0; i < alimentos.length; i++) {
      await alimento_compuesto.reg_al_comp(
          alimentos[i], id_al_comp, porciones[i]);
    }
    return true;
  }

  //Registar los datos del valor nutricional del alimento compuesto
  Future<bool> reg_valor_nutricional(
      int id_al_comp, List alimentos, List porciones) async {
    //registrar los datos nutricionales del alimento compuesto
    final alimento_simple = model_alimento();
    final alimento_compuesto = model_alimento_compuesto();

    //obtener los datos nutricionales de los alimentos simples
    List<List<dynamic>> datos_nutricionales = [];
    int i, j;
    var dato;
    for (i = 0; i < alimentos.length; i++) {
      dato = await alimento_simple.datos_alimento(alimentos[i]);
      datos_nutricionales.add(dato!);
    }

    //print('datos nutricionales: $datos_nutricionales');
    //print('porciones: $porciones');

    //sumar los datos nutriconales segun la porcion ingresada indice [2 al 8] el 9 es la porcion
    var datos_nutricionales_sumados = List<double>.filled(8, 0);
    for (i = 0; i < datos_nutricionales.length; i++) {
      for (j = 2; j < 9; j++) {
        datos_nutricionales_sumados[j - 2] +=
            (datos_nutricionales[i][j] * porciones[i]) /
                100; // cambiar 100 por la porcion del alimento
      }
    }

    for (i = 0; i < datos_nutricionales.length; i++) {
      datos_nutricionales_sumados[7] += datos_nutricionales[i][9];
    }

    print(datos_nutricionales_sumados);
    // Añadir los datos nutricionales del alimento compuesto
    return alimento_compuesto.reg_valor_nutricional(
        id_al_comp, datos_nutricionales_sumados);
  }

  Future<List<List<dynamic>>?> busqueda_alimentos(
      String nombre, String max_calorias, String email) async {
    model_alimento_compuesto alimento1 = model_alimento_compuesto();
    double max_calorias_float;
    if (max_calorias.isEmpty) {
      max_calorias_float = 99999;
    } else {
      max_calorias_float = double.parse(max_calorias);
    }
    Future<List<List<dynamic>>?> alimento =
        alimento1.listar_alimentos(nombre, max_calorias_float, email);
    return alimento;
  }
}
