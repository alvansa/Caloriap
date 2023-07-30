import '../model/model_historial_usuario.dart';

class controllerHistorialDeUsuario {
  //function to redirect to model and insert reg_consumo into historial table
  Future<bool> registrarConsumoAl(
      String email, String fecha, int id_al, int porcion) async {
    //obtener variables de la vista
    HistorialUsuario historialUsuario =
        HistorialUsuario(email, fecha, id_al, porcion);
    return await historialUsuario.registrarConsumoAl(
        email, fecha, id_al, porcion);
  }

  //function to redirect to model and get all reg_consumo from historial table from a specific date
  Future<List<List>> getHistorialUsuario(String email, String fecha) async {
    //obtener variables de la vista
    HistorialUsuario historialUsuario = HistorialUsuario(email, fecha, 0, 0);

    return await historialUsuario.getHistorialUsuario(email, fecha);
  }

  Future<int> getPorcionesConsumidas(String email, String fecha) async {
    //obtener variables de la vista
    HistorialUsuario historialUsuario = HistorialUsuario(email, fecha, 0, 0);
    return await historialUsuario.getSumPorcionesAlimentos(email, fecha);
  }
}
