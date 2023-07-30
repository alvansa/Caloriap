import 'package:flutter/material.dart';

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

    List<List<dynamic>> historial =
        await historialUsuario.getHistorialUsuario(email, fecha);
    historial = calcular_calorias(historial);

    return historial;
  }

  List porcion_calorias_total(List<List> historial) {
    //obtener variables de la vista
    List total = [0, 0];
    int i = 0;
    print('historial del controlador $historial');
    for (i = 0; i < historial.length; i++) {
      total[0] = total[0] + double.parse(historial[i][1]);
      total[1] = total[1] + double.parse(historial[i][2]);
    }
    print('total del controlador $total');
    return total;
  }

  List<List> calcular_calorias(List<List> historial) {
    int i = 0;
    double caloriasConsumidas = 0;
    double porcionConsumida = 0;
    double caloriasDefinidas = 0;
    double porcionDefinida = 0;
    //Calcular calorias consumidas por la porcion ingresada
    for (i = 0; i < historial.length; i++) {
      porcionConsumida = double.parse(historial[i][1]);
      porcionDefinida = double.parse(historial[i][2]);
      caloriasDefinidas = double.parse(historial[i][3]);
      caloriasConsumidas =
          (porcionConsumida * caloriasDefinidas) / porcionDefinida;
      historial[i][2] = caloriasConsumidas.toString();
    }
    return historial;
  }
}
