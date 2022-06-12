import '../../utils/clean.dart';
import '../../utils/read.dart';
import '../../variables/usuarios.dart';
import '../home/home.dart';

void adicionarUsuario() {
  cleanScreen();
  String login = readString(message: "Digite o login: ");

  String password = readString(message: "Digite a senha: ");

  Map<String, dynamic> user = {
    "login": login,
    "senha": password,
    "qtd": 0,
  };

  users.add(user);

  print("Usuário adicionado com sucesso");

  readString(message: "\nDigite algo para continuar:");

  home();
}
