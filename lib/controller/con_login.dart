import '../model/model_persona.dart';

class controllerLogin {
  //function to check if email is already in database
  Future<bool> checkEmail(String email) async {
    //obtener variables de la vista
    Persona persona = Persona(email, '', '', 0);
    return await persona.checkEmail(email);
  }

  //function to login
  Future<List<dynamic>> login(String email, String password) async {
    //obtener variables de la vista
    Persona persona = Persona(email, '', password, 0);
    return await persona.login(email, password);
  }
}
