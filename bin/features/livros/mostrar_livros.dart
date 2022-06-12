import '../../utils/clean.dart';
import '../../variables/livros.dart';

void mostrarLivros() {
  cleanScreen();

  print("Livros \n");
  for (int i = 0; i < books.length; i++) {
    print("$i - " + books[i]['title']);
  }
}
