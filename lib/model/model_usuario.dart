import 'model_persona.dart';
import 'connection.dart';

class Usuario extends Persona {
  //override 'tipo' to 'u'
  Usuario(String email, String username, String password, int tipo)
      : super(email, username, password, 1);

  //function to insert user into database
  Future<List<dynamic>> Autoregistro(
      String Email, String username, String password) async {
    final connection = await conn();
    final result = await connection.query(
        'INSERT INTO persona (email, username, password, tipo) VALUES (@Email, @username, @password, @tipo)',
        substitutionValues: {
          'Email': Email,
          'username': username,
          'password': password,
          'tipo': tipo
        });
    await connection.close();
    return result;
  }
}

void main() async {
  final usuario = Usuario('email', 'username', 'password', 1);
  await usuario.Autoregistro('email', 'username', 'password');
}
