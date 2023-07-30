import '../model/connection.dart';

class HistorialUsuario {
  late String Email;
  late String fecha;
  late int ID_alimento;
  late int porcion;

  //constructor
  HistorialUsuario(this.Email, this.fecha, this.ID_alimento, this.porcion);

  //funtion 'registrarConsumoAl' to to insert reg_consumo into table 'historial', input String 'email', date 'fecha', int 'id_al' and 'porcion'
  Future<bool> registrarConsumoAl(
      String email, String fecha, int id_al, int porcion) async {
    final connection = await conn();
    final result = await connection.query(
        'INSERT INTO historial (email, fecha, ID_al, porcion) VALUES (@email, @fecha, @id_al, @porcion)',
        substitutionValues: {
          'email': email,
          'fecha': fecha,
          'id_al': id_al,
          'porcion': porcion
        });
    await connection.close();
    return true;
  }

  //funtion 'registrarConsumoAlComp' to to insert reg_consumo into table 'historial', input String 'email', date 'fecha', int 'id_al_comp' and 'porcion'
  Future<bool> registrarConsumoAlComp(
      String email, String fecha, int id_al_comp, int porcion) async {
    final connection = await conn();
    final result = await connection.query(
        'INSERT INTO historial (email, fecha, ID_al_comp, porcion) VALUES (@email, @fecha, '
        '@id_al_comp, @porcion)',
        substitutionValues: {
          'email': email,
          'fecha': fecha,
          'id_al_comp': id_al_comp,
          'porcion': porcion
        });
    await connection.close();
    return true;
  }

  //funtion 'getHistorialUsuario' to get all reg_consumo from table 'historial' from a specific date, input String 'email' and date 'fecha'
  Future<List<List<dynamic>>> getHistorialUsuario(
      String email, String fecha) async {
    final connection = await conn();
    final result = await connection.query('''SELECT 
        (CASE WHEN historial.ID_al IS NOT NULL THEN (Select nombre from alimento WHERE alimento.id_al = historial.id_al) 
		  WHEN historial.ID_al_comp IS NOT NULL THEN (Select nombre from alimento_compuesto WHERE alimento_compuesto.id_al_comp = historial.id_al_comp)  END) as nombre,
      historial.porcion as porcion_consumida,
		  (CASE WHEN historial.ID_al IS NOT NULL THEN (Select porcion from alimento WHERE alimento.id_al = historial.id_al) 
		  WHEN historial.ID_al_comp IS NOT NULL THEN (Select porcion from alimento_compuesto WHERE alimento_compuesto.id_al_comp = historial.id_al_comp)  END) as porcion,
		  (CASE WHEN historial.ID_al IS NOT NULL THEN (Select calorias from alimento WHERE alimento.id_al = historial.id_al) 
		  WHEN historial.ID_al_comp IS NOT NULL THEN (Select calorias from alimento_compuesto WHERE alimento_compuesto.id_al_comp = historial.id_al_comp)  END) as calorias
        FROM
		      historial
		    LEFT JOIN
  			  alimento ON historial.ID_al = alimento.id_al
		    LEFT JOIN
  			  alimento_compuesto ON historial.ID_al_comp = alimento_compuesto.id_al_comp
        WHERE historial.email = @email and historial.fecha = @fecha;''',
        substitutionValues: {'email': email, 'fecha': fecha});
    await connection.close();

    List<List> historial = [];
    for (var row in result) {
      List<String> historialUsuario = [];
      historialUsuario.add(row[0].toString());
      historialUsuario.add(row[1].toString());
      historialUsuario.add(row[2].toString());
      historialUsuario.add(row[3].toString());
      historial.add(historialUsuario);
    }
    return historial;
  }

//funcion que muestra solo la suma de las porciones de los alimentos consumidos en un dia
  Future<int> getSumPorcionesAlimentos(String email, String fecha) async {
    final connetion = await conn();
    final results = await connetion.query(
        'SELECT SUM(historial.porcion) FROM historial, alimento WHERE alimento.id_al =historial.id_al and historial.email = @email and historial.fecha = @fecha',
        substitutionValues: {'email': email, 'fecha': fecha});
    await connetion.close();
    if (results.isEmpty || results[0][0] == null) {
      return 0;
    }

    return results[0][0];
    //retorna la suma de las porciones de los alimentos consumidos en un dia
  }
}
/*
void main() async {
  final historialUsuario = HistorialUsuario('a@b.com', '2021-05-05', 1, 1);

  //await historialUsuario.registrarConsumoAl('a@b.com', '2021-05-05', 1, 1);
  //await historialUsuario.registrarConsumoAlComp('a@b.com', '2021-05-05', 1, 1);
  print(await historialUsuario.getHistorialUsuario('a@b.com', '2021-05-05'));
}
*/