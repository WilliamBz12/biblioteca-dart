import '../../utils/clean.dart';
import '../../utils/read.dart';
import '../../variables/livros.dart';
import '../autenticacao/usuarios.dart';
import '../livros/adicionar_livro.dart';
import '../livros/alugar_livro.dart';
import '../autenticacao/adicionar_usuario.dart';
import '../livros/devolver_livro.dart';

void home() {
  cleanScreen();
  print('Bem-vindo ao The book is on the table');
  print("1. Alugar livro");
  print("2. Devolver livro");
  print("3. Cadastrar livro");
  print("4. Cadastrar usuário");
  print("5. Usuários");
  print("6. Livros");
  print("0. Sair");

  int option = readInt(message: "\nSelecione uma opção:");

  switch (option) {
    case 1:
      alugarLivro();
      break;
    case 2:
      devolverLivro();
      break;
    case 3:
      adicionarLivro();
      break;
    case 4:
      adicionarUsuario();
      break;
    case 5:
      usuarios();
      break;
    case 6:
      print(books.toString());
      break;
    case 0:
      cleanScreen();
      print("Até a próxima...");
      break;
    default:
      home();
  }
}
