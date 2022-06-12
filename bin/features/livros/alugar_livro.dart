import '../../utils/read.dart';
import '../../variables/livros.dart';
import '../../variables/usuarios.dart';
import '../autenticacao/login.dart';
import '../home/home.dart';
import 'mostrar_livros.dart';

void alugarLivro() {
  Map<String, dynamic>? user = login();

  if (user != null) {
    mostrarLivros();
    alugar(user: user);
  } else {
    print("Usuário não autenticado");
  }
  readString(message: "\nDigite algo para voltar:");
  home();
}

void alugar({required Map<String, dynamic> user}) {
  int option = readInt(message: "\nSelecione uma opção:");

  Map<String, dynamic> book = books[option];

  if (book['qtd'] > 0) {
    // update qtd de livros
    book["qtd"]--;
    books[option] = book;

    // update usuarios
    int i = users.indexWhere((element) => element == user);
    user["qtd"]++;
    users[i] = user;

    print("Aluguel registrado com sucesso");
  } else {
    print("Sem livros disponiveis");
  }
}
