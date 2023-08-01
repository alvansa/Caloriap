// Path: lib\Funciones\view_Registrar_alimento.dart
import 'package:myapp/model/connection.dart';

//funcion que recoga los datos de alimento de la bd

class model_alimento {
  //aqui falta poner el email de usuario que lo ingreso
  Future<bool> reg_alimento(
      String nombre,
      double calorias,
      double proteinas,
      double grasas_totales,
      double hidratos_carbono,
      double azucares,
      double colesterol,
      double sodio,
      double porcion,
      int tipo,
      String email) async {
    final connection = await conn();

    try {
      //id_al , nombre , calorias , carbohidratos , proteinas , grasas_totales , hidratos_carbono , azucares , colesterol , sodio
      await connection.query(
          '''insert into alimento (nombre, calorias,azucares,proteina,sodio,grasa_total, h_de_C,colesterol,porcion,predeterminado, id_tipo, email)
            values (@stringValue, $calorias, $azucares,$proteinas, $sodio, $grasas_totales, $hidratos_carbono,  $colesterol,$porcion,false, $tipo,@email)''',
          substitutionValues: {'stringValue': nombre, 'email': email});
      await connection.close();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> reg_alimento_predeterminado(
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

      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List> id_alimento(
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
      final result = await connection.query(
          '''select id_al from alimento where nombre = @nombre AND calorias = $calorias AND porcion = $porcion AND azucares = $azucares AND sodio = $sodio AND grasa_total = $grasas_totales AND h_de_C = $hidratos_carbono AND colesterol = $colesterol AND proteina = $proteinas''',
          substitutionValues: {'nombre': nombre});
      await connection.close();
      return result;
    } catch (e) {
      print(e);
      List result = [];
      return result;
    }
  }

  //Aqui falta verificar que el alimento o sea predeterminado o este asociado al usuario
  Future<List<dynamic>?> datos_alimento(int id) async {
    final connection = await conn();

    final result = await connection.query(
        'select * from alimento,tipo_alimento where id_al = $id AND alimento.id_tipo = tipo_alimento.id_tipo');

    final data = result.isNotEmpty ? result.expand((row) => row).toList() : [];

    await connection.close();

    return data;
  }

//nombre, tipo, calorias , restriccion.
  Future<List<List<dynamic>>> listar_alimentos(
      String nombre, double max_cal, String email, int tipo) async {
    try {
      final connection = await conn();
      print('email de listar alimentos $email');
      if (tipo == -1) {
        final result =
            await connection.query('''select * from alimento,tipo_alimento 
        where alimento.nombre like @nombre 
        and alimento.id_tipo = tipo_alimento.id_tipo
        and calorias <= $max_cal
        and (predeterminado = true or id_al in (select id_al from alimento where email = @email)) 
        order by alimento.nombre asc
        ''', substitutionValues: {'nombre': '%$nombre%', 'email': email});
        await connection.close();

        return result;
      } else {
        print(
            'datos que recibe listar alimentos $nombre, $max_cal, $email, $tipo');
        tipo = tipo + 1;
        final result =
            await connection.query('''select * from alimento,tipo_alimento
        where alimento.nombre like @nombre 
        and alimento.id_tipo = tipo_alimento.id_tipo
        and calorias <= $max_cal
        and (predeterminado = true or id_al in (select id_al from alimento where email = @email)) 
        and (tipo_alimento.id_tipo in (select id_tipo from tipo_alimento where id_tipo = $tipo) )    
        order by alimento.nombre asc
        ''', substitutionValues: {'nombre': '%$nombre%', 'email': email});
        await connection.close();

        print(
            'Resultado de la busqueda con parametros $nombre, $max_cal, $email, $tipo');
        return result;
      }
    } catch (e) {
      print('error en listar alimentos: $e');
      List<List> result = [];
      return result;
    }
  }

  Future<List<List<dynamic>>> listar_alimentos_restriccion(
      String nombre, double max_cal, int restriccion, String email) async {
    try {
      final connection = await conn();

      final result = await connection.query('''
        select * from alimento 
        where nombre like @nombre 
        and calorias <= $max_cal
        and (predeterminado = true or id_al in (select id_al 
                                                from alimento
                                                where email = @email)
                                                )
        and (id_al in (select id_restriccion
                      from rest_al
                      where id_restriccion = $restriccion)
                      )
        order by nombre desc
        ''', substitutionValues: {'nombre': '%$nombre%', 'email': email});

      await connection.close();

      return result;
    } catch (e) {
      print('error en conectar a la base de datos: $e');
      List<List> result = [];
      return result;
    }
  }

  //Funcion para actualizar un alimento
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
      int tipo,
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
          id_tipo = $tipo, 
          porcion = @porcion 
          where id_al = $id_al
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
  Future<List<dynamic>> pedir_filtro_tipo() async {
    final connection = await conn();
    try {
      final result = await connection.query('''select * from tipo_alimento''');

      await connection.close();
      return result;
    } catch (e) {
      print('error en conectar a la base de datos: $e');
      List<dynamic> result = [];
      return result;
    }
  }

//Teoricamente listo
  Future<List<dynamic>> pedir_filtro_restriccion() async {
    final connection = await conn();
    try {
      final result = await connection.query('''select * from restriccion''');

      await connection.close();
      return result;
    } catch (e) {
      print('error en conectar a la base de datos: $e');
      List<dynamic> result = [];
      return result;
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
