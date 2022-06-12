import '../../utils/clean.dart';
import '../../utils/read.dart';
import '../../variables/livros.dart';
import '../home/home.dart';

void adicionarLivro() {
  cleanScreen();
  String title = readString(message: "Digite o titulo: ");

  int qtd = readInt(message: "Quantidade em estoque: ");

  Map<String, dynamic> book = {
    "title": title,
    "qtd": qtd,
  };

  books.add(book);

  print("Livro adicionado com sucesso!");

  readString(message: "\nDigite algo para continuar:");

  home();
}
