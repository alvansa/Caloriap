// Path: lib\Funciones\view_Registrar_alimento.dart
import 'package:flutter/foundation.dart';
import 'package:myapp/model/connection.dart';

//funcion que recoga los datos de alimento de la bd

class model_alimento {
  //aqui falta poner el email de usuario que lo ingreso
  Future<void> reg_alimento(
      String nombre,
      double calorias,
      double proteinas,
      double grasas_totales,
      double hidratos_carbono,
      double azucares,
      double colesterol,
      double sodio,
      double porcion,
      String email) async {
    final connection = await conn();

    try {
      //id_al , nombre , calorias , carbohidratos , proteinas , grasas_totales , hidratos_carbono , azucares , colesterol , sodio
      await connection.query(
          '''insert into alimento (nombre, calorias,azucares,proteina,sodio,grasa_total, h_de_C,colesterol,porcion,predeterminado,email)
            values (@stringValue, $calorias, $azucares,$proteinas, $sodio, $grasas_totales, $hidratos_carbono,  $colesterol,$porcion,false,@email)''',
          substitutionValues: {'stringValue': nombre, 'email': email});
      await connection.close();
    } catch (e) {
      print(e);
    }
  }

  Future<void> reg_alimento_predeterminado(
      String nombre,
      double calorias,
      double proteinas,
      double grasas_totales,
      double hidratos_carbono,
      double azucares,
      double colesterol,
      double sodio,
      double porcion) async {
    final connection = await conn();

    try {
      //id_al , nombre , calorias , carbohidratos , proteinas , grasas_totales , hidratos_carbono , azucares , colesterol , sodio
      await connection.query(
          '''insert into alimento (nombre, calorias,azucares,proteina,sodio,grasa_total, h_de_C,colesterol,porcion,predeterminado)
            values (@stringValue, $calorias, $azucares,$proteinas, $sodio, $grasas_totales, $hidratos_carbono,  $colesterol,$porcion,true)''',
          substitutionValues: {'stringValue': nombre});
      await connection.close();
    } catch (e) {
      print(e);
    }
  }

  //Aqui falta verificar que el alimento o sea predeterminado o este asociado al usuario
  Future<List<dynamic>?> datos_alimento(int id) async {
    final connection = await conn();

    final result =
        await connection.query('select * from alimento where id_al = $id');

    final data = result.isNotEmpty ? result.expand((row) => row).toList() : [];

    await connection.close();

    return data;
  }

//nombre, tipo, calorias , restriccion.
//Falta ver como lo hacemos con los filtro de tipo y restriccion
  Future<List<List<dynamic>>> listar_alimentos(
      String nombre, double max_cal, String email) async {
    try {
      final connection = await conn();

      final result = await connection.query('''select * from alimento 
        where nombre like @nombre 
        and calorias <= $max_cal
        and (predeterminado = true or id_al in (select id_al from alimento where email = @email))    
        order by nombre asc
        ''', substitutionValues: {'nombre': '%$nombre%', 'email': email});

      //final data =
      //    result.isNotEmpty ? result.map((row) => row.toList()).toList() : null;

      await connection.close();
      print(result);
      return result;
    } catch (e) {
      print('error en listar alimentos: $e');
      List<List> result = [];
      return result;
    }
  }

//Falta verificar que el alimento o sea predeterminado o este asociado al usuario
//Hay que ver que un usuario no pueda cambiar informacion de un alimento predeterminado
  Future<bool> actualizar_alimento(
      int id_al,
      String nombre,
      double calorias,
      double proteinas,
      double grasa_total,
      double h_de_c,
      double azucares,
      double colesterol,
      double sodio,
      double porcion) async {
    final connection = await conn();

    try {
      print('id del alimento a actualizar $id_al');

      final result = await connection.query('''update alimento 
          set nombre = @nom, 
          calorias = @calorias, 
          azucares = @azucares, 
          proteina = @proteinas, 
          sodio = @sodio, 
          grasa_total = @grasa_total, 
          h_de_c = @h_de_c, 
          colesterol = @colesterol, 
          porcion = @porcion 
          where id_al = 15
          RETURNING *;''', substitutionValues: {
        'nom': nombre,
        'colesterol': colesterol,
        'id_al': id_al,
        'calorias': calorias,
        'azucares': azucares,
        'proteinas': proteinas,
        'sodio': sodio,
        'grasa_total': grasa_total,
        'h_de_c': h_de_c,
        'porcion': porcion
      });
      await connection.close();
      print(result);
      return true;
    } catch (e) {
      print('error en actualizar alimento: $e');
      return false;
    }
  }

  //Teoricamente listo
  Future<List<dynamic>?> pedir_filtro_tipo() async {
    final connection = await conn();
    try {
      final result =
          await connection.query('''select nombre tipo from tipo_alimento''');
      final data =
          result.isNotEmpty ? result.map((row) => row.toList()).toList() : null;
      await connection.close();
      return data;
    } catch (e) {
      print('error en conectar a la base de datos: $e');
      return null;
    }
  }

//Teoricamente listo
  Future<List<dynamic>?> pedir_filtro_restriccion() async {
    final connection = await conn();
    try {
      final result =
          await connection.query('''select nombre tipo from restriccion''');
      final data =
          result.isNotEmpty ? result.map((row) => row.toList()).toList() : null;
      await connection.close();
      return data;
    } catch (e) {
      print('error en conectar a la base de datos: $e');
      return null;
    }
  }
}


/*metodos model alimento
  reg_alimento   ✓✓
  reg_alimento_predeterminado ✓✓
  pedir_filtros_tipo 
  pedir_filtros_restriccion
  listar_alimentos 
  datos_alimento ✓✓ 
  actualizar_alimento ✓✓
  get_lista_alimentos




*/
