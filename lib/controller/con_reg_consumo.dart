import '../model/model_historial_usuario.dart';

class con_reg_consumo {
  Future<bool> ing_consumo(
      String email, String fecha, int id_alimento, String porcion) async {
    //pasar porcion a double
    int porcion1 = int.parse(porcion);

    HistorialUsuario reg_consumo1 =
        HistorialUsuario(email, fecha, id_alimento, porcion1);

    print("email: " + email);
    print("fecha: " + fecha);
    print("id_alimento: " + id_alimento.toString());
    print("porcion: " + porcion1.toString());

    await reg_consumo1.registrarConsumoAl(email, fecha, id_alimento, porcion1);
    return true;
  }
}
