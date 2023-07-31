import '../model/model_historial_usuario.dart';

class con_reg_consumo {
  Future<bool> ing_consumo(
      String email, String fecha, int id_alimento, String porcion) async {
    //pasar porcion a double
    int porcion1 = int.parse(porcion);

    HistorialUsuario reg_consumo1 =
        HistorialUsuario(email, fecha, id_alimento, porcion1);

    await reg_consumo1.registrarConsumoAl(email, fecha, id_alimento, porcion1);
    return true;
  }

  Future<bool> ing_consumo_compuesto(
      String email, String fecha, int id_alimento_comp, String porcion) async {
    //pasar porcion a double
    int porcion1 = int.parse(porcion);

    HistorialUsuario reg_consumo1 =
        HistorialUsuario(email, fecha, id_alimento_comp, porcion1);

    await reg_consumo1.registrarConsumoAlComp(
        email, fecha, id_alimento_comp, porcion1);
    return true;
  }
}
