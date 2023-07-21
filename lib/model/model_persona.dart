import 'connection.dart';

class Persona {
  late String email;
  late String username;
  late String password;
  late int tipo;

  //constructor
  Persona(this.email, this.username, this.password, this.tipo);

  //function to check if email is already in database
  Future<bool> checkEmail(String email) async {
    final connection = await conn();
    final result = await connection.query(
        'SELECT * FROM persona WHERE email = @Email',
        substitutionValues: {'Email': email});
    await connection.close();
    if (result.isEmpty) {
      print('Email not found');
      return false;
    } else {
      print('Email found');
      return true;
    }
  }

  //function to login
  Future<List<dynamic>> login(String email, String password) async {
    final connection = await conn();
    final result = await connection.query(
        'SELECT * FROM persona WHERE email = @Email AND password = @password',
        substitutionValues: {'Email': email, 'password': password});
    await connection.close();
    if (result.isEmpty) {
      print('User not found');
      return result;
    } else {
      print('User found');
      return result;
    }
  }
}
