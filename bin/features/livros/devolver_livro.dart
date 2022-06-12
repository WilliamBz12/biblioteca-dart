import '../../utils/read.dart';
import '../../variables/livros.dart';
import '../../variables/usuarios.dart';
import '../autenticacao/login.dart';
import '../home/home.dart';
import 'mostrar_livros.dart';

void devolverLivro() {
  Map<String, dynamic>? user = login();
  if (user != null) {
    mostrarLivros();
    devolver(user: user);
  } else {
    print("Usuário não autenticado");
  }
  readString(message: "\nDigite algo para voltar:");
  home();
}

void devolver({required Map<String, dynamic> user}) {
  int option = readInt(message: "\nSelecione uma opção:");

  if (user['qtd'] > 0) {
    Map<String, dynamic> book = books[option];
    // update qtd de livros
    book["qtd"]++;
    books[option] = book;

    // update usuarios
    int i = users.indexWhere((element) => element == user);
    user["qtd"]--;
    users[i] = user;

    print("Livro devolvido com sucesso");
  } else {
    print("Você não tem livros alugados");
  }
}
