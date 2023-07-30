import 'connection.dart';

//En general falta ver si hacemos un registro predeterminado y otro para el usuario

class model_alimento_compuesto {
  Future<int> reg_al_comp_nombre(String nombre, String email) async {
    final connection = await conn();
    try {
      await connection.query(
          '''insert into alimento_compuesto (nombre,predeterminado,email) values (@nombre,false,@email)''',
          substitutionValues: {'nombre': nombre, 'email': email});
      var id_al_comp = 0;
      final result = await connection.query(
          '''select id_al_comp from alimento_compuesto where nombre = @nombre''',
          substitutionValues: {'nombre': nombre});
      if (result.isNotEmpty) {
        id_al_comp = result[0][0];
        print('id del alimento compuesto a insertar: $id_al_comp');
      }

      await connection.close();
      return id_al_comp;
    } catch (e) {
      print('error en registrar alimento compuesto: $e');
      return 0;
    }
  }

  Future<bool> reg_al_comp(int id_al, int id_al_comp, int porcion) async {
    final connection = await conn();
    try {
      await connection.query(
          '''insert into al_comp (id_al,id_al_comp,porcion) values ($id_al,$id_al_comp,$porcion)''');

      await connection.close();
      return true;
    } catch (e) {
      print('error en registrar alimento compuesto: $e');
      return false;
    }
  }

  Future<List<List<dynamic>>> listar_alimentos(
      String nombre, double max_cal, String email) async {
    try {
      final connection = await conn();

      final result = await connection.query('''select * from alimento_compuesto 
        where nombre like @nombre 
        and calorias <= $max_cal
        and (predeterminado = true or id_al_comp in (select id_al_comp from alimento_compuesto where email = @email))    
        order by nombre asc
        ''', substitutionValues: {'nombre': '%$nombre%', 'email': email});

      await connection.close();

      return result;
    } catch (e) {
      print('error en conectar a la base de datos: $e');
      List<List> result = [];
      return result;
    }
  }

  Future<bool> reg_valor_nutricional(int id, List datos_nutricionales) async {
    final connection = await conn();
    try {
      //update alimento_compuesto con datos_nutricionales
      await connection.query('''UPDATE alimento_compuesto SET 
          calorias = @calorias, 
          azucares = @azucares, 
          proteina = @proteina, 
          sodio = @sodio, 
          grasa_total = @grasa, 
          h_de_c = @h_de_c, 
          colesterol = @colesterol, 
          porcion = @porcion where id_al_comp = @id''', substitutionValues: {
        'calorias': datos_nutricionales[0],
        'azucares': datos_nutricionales[1],
        'proteina': datos_nutricionales[2],
        'sodio': datos_nutricionales[3],
        'grasa': datos_nutricionales[4],
        'h_de_c': datos_nutricionales[5],
        'colesterol': datos_nutricionales[6],
        'porcion': datos_nutricionales[7],
        'id': id
      });
      await connection.close();
      return true;
    } catch (e) {
      print('error en registrar valor nutricional: $e');
      return false;
    }
  }
}



/*
busqueda de alimentos
  listar_alimentos_comp(nombre, tipo,calorias, restriccion)

Registro alimento compuesto
  reg_al_comp(nombre,alimentos)
*/