import '../../utils/read.dart';
import '../../variables/usuarios.dart';

Map<String, dynamic>? login() {
  String login = readString(message: "Digite o seu login: ");

  String password = readString(message: "Digite sua senha: ");

  bool isLogged = users.any(
    (element) => element["login"] == login && element["senha"] == password,
  );

  if (isLogged) {
    return users.firstWhere(
        (element) => element["login"] == login && element["senha"] == password);
  }

  return null;
}
