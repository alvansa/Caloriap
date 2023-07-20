import 'model_persona.dart';
import 'connection.dart';

class Admin extends Persona {
  //override 'tipo' to 'a'
  Admin(String email, String username, String password, int tipo)
      : super(email, username, password, 2);

  //funtion to insert 'tipo alimentos' into database, input String 'id_tipo' and String 'nombre'
  Future<bool> insertTipoAlimentos(int id_tipo, String nombre) async {
    final connection = await conn();
    final result = await connection.query(
        'INSERT INTO tipo_alimento (ID_tipo, nombre) VALUES (@id_tipo, @nombre)',
        substitutionValues: {'id_tipo': id_tipo, 'nombre': nombre});
    await connection.close();
    return true;
  }

  //funtion to update 'tipo alimentos' into database, input String 'id_tipo' and String 'nombre'
  Future<bool> updateTipoAlimentos(int id_tipo, String nombre) async {
    final connection = await conn();
    final result = await connection.query(
        'UPDATE tipo_alimento SET nombre = @nombre WHERE ID_tipo = @id_tipo',
        substitutionValues: {'id_tipo': id_tipo, 'nombre': nombre});
    await connection.close();
    return true;
  }

  //funtion to delete 'tipo alimentos' into database, input String 'id_tipo'
  Future<bool> deleteTipoAlimentos(int id_tipo) async {
    final connection = await conn();
    final result = await connection.query(
        'DELETE FROM tipo_alimento WHERE ID_tipo = @id_tipo',
        substitutionValues: {'id_tipo': id_tipo});
    await connection.close();
    return true;
  }

  //function to insert 'restriccion' into table 'restriccion', input String 'id_restriccion' and 'nombre' and String 'nombre'
  Future<bool> insertRestriccion(int id_restriccion, String nombre) async {
    final connection = await conn();
    final result = await connection.query(
        'INSERT INTO restriccion (ID_restriccion, nombre) VALUES (@id_restriccion, @nombre)',
        substitutionValues: {
          'id_restriccion': id_restriccion,
          'nombre': nombre
        });
    await connection.close();
    return true;
  }

  //function to update 'restriccion' into table 'restriccion', input String 'id_restriccion' and 'nombre' and String 'nombre'
  Future<bool> updateRestriccion(int id_restriccion, String nombre) async {
    final connection = await conn();
    final result = await connection.query(
        'UPDATE restriccion SET nombre = @nombre WHERE ID_restriccion = @id_restriccion',
        substitutionValues: {
          'id_restriccion': id_restriccion,
          'nombre': nombre
        });
    await connection.close();
    return true;
  }

  //function to delete 'restriccion' into table 'restriccion', input String 'id_restriccion'
  Future<bool> deleteRestriccion(int id_restriccion) async {
    final connection = await conn();
    final result = await connection.query(
        'DELETE FROM restriccion WHERE ID_restriccion = @id_restriccion',
        substitutionValues: {'id_restriccion': id_restriccion});
    await connection.close();
    return true;
  }

  //funtion to insert 'tipo_persona into table 'tipo_persona', input String 'id_tipo_persona' and String 'nombre'
  Future<bool> insertTipoPersona(int id_tipo_persona, String nombre) async {
    final connection = await conn();
    final result = await connection.query(
        'INSERT INTO tipo_persona (ID_persona, nombre) VALUES (@id_tipo_persona, @nombre)',
        substitutionValues: {
          'id_tipo_persona': id_tipo_persona,
          'nombre': nombre
        });
    await connection.close();
    return true;
  }

  //funtion to update 'tipo_persona into table 'tipo_persona', input String 'id_tipo_persona' and String 'nombre'
  Future<bool> updateTipoPersona(int id_tipo_persona, String nombre) async {
    final connection = await conn();
    final result = await connection.query(
        'UPDATE tipo_persona SET nombre = @nombre WHERE ID_persona = @id_tipo_persona',
        substitutionValues: {
          'id_tipo_persona': id_tipo_persona,
          'nombre': nombre
        });
    await connection.close();
    return true;
  }

  //funtion to delete 'tipo_persona into table 'tipo_persona', input String 'id_tipo_persona'
  Future<bool> deleteTipoPersona(int id_tipo_persona) async {
    final connection = await conn();
    final result = await connection.query(
        'DELETE FROM tipo_persona WHERE ID_persona = @id_tipo_persona',
        substitutionValues: {'id_tipo_persona': id_tipo_persona});
    await connection.close();
    return true;
  }

  //funtion to insert an admin into table 'persona', input String 'email', 'username', 'password' and 'tipo'
  Future<bool> insertAdmin(
      String email, String username, String password) async {
    final connection = await conn();
    final result = await connection.query(
        'INSERT INTO persona (email, username, password, tipo) VALUES (@email, '
        '@username, @password, @tipo)',
        substitutionValues: {
          'email': email,
          'username': username,
          'password': password,
          'tipo': 2
        });
    await connection.close();
    return true;
  }
}

void main() async {
  final admin = Admin('alo@alo', 'alo', 'alo', 2);

  //await admin.insertTipoPersona(1, 'Usuario');
  //await admin.insertTipoPersona(2, 'Administrador');

  //await admin.insertTipoAlimentos(1, 'Frutas');
  //await admin.insertTipoAlimentos(2, 'Verduras');
  //await admin.insertTipoAlimentos(3, 'Carnes');
  //await admin.insertTipoAlimentos(4, 'Lacteos');

  //await admin.insertRestriccion(1, 'Vegetariano');
  //await admin.insertRestriccion(2, 'Vegano');
  //await admin.insertRestriccion(3, 'Diabetico');
}
