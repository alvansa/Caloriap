import 'model_persona.dart';
import 'connection.dart';

class Usuario extends Persona {
  //override 'tipo' to 'u'
  Usuario(String email, String username, String password, int tipo)
      : super(email, username, password, 1);

  //function to insert user into database
  Future<bool> Autoregistro(
      String Email, String username, String password) async {
    final connection = await conn();
    final result = await connection.query(
        'INSERT INTO persona (email, username, password, id_persona) VALUES (@Email, @username, @password, @tipo)',
        substitutionValues: {
          'Email': Email,
          'username': username,
          'password': password,
          'tipo': tipo
        });
    await connection.close();
    return true;
  }
}
