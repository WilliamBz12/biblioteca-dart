import '../../utils/read.dart';
import '../../variables/usuarios.dart';
import '../home/home.dart';

void usuarios() {
  for (var user in users) {
    print(user.toString());
  }
  readString(message: "Digite algo para voltar");
  home();
}
