import '../model/model_usuario.dart';

class controllerSingIn {
  //function to check if email is already in database
  Future<bool> checkEmail(String email) async {
    Usuario usuario = new Usuario(email, '', '', 0);
    return await usuario.checkEmail(email);
  }

  //function to register
  Future<bool> RegistroUsuario(
      String email, String username, String password, int tipo) async {
    Usuario usuario = new Usuario(email, username, password, tipo);
    return await usuario.Autoregistro(email, username, password);
  }
}
